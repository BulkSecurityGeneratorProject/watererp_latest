package com.callippus.water.erp.web.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.common.CPSConstants;
import com.callippus.water.erp.domain.CustMeterMapping;
import com.callippus.water.erp.domain.MeterChange;
import com.callippus.water.erp.domain.MeterDetails;
import com.callippus.water.erp.domain.enumeration.MeterChangeStatus;
import com.callippus.water.erp.repository.CustDetailsRepository;
import com.callippus.water.erp.repository.CustMeterMappingRepository;
import com.callippus.water.erp.repository.MeterChangeRepository;
import com.callippus.water.erp.repository.MeterDetailsRepository;
import com.callippus.water.erp.repository.MeterStatusRepository;
import com.callippus.water.erp.repository.StatusMasterRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import com.callippus.water.erp.workflow.meterchange.service.MeterChangeWorkflowService;
import com.callippus.water.erp.workflow.service.WorkflowService;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing MeterChange.
 */
@RestController
@RequestMapping("/api")
public class MeterChangeResource {

    private final Logger log = LoggerFactory.getLogger(MeterChangeResource.class);
        
    @Inject
    private MeterChangeRepository meterChangeRepository;
    
    @Inject
    private CustMeterMappingRepository custMeterMappingRepository;
    
    @Inject
    private MeterChangeWorkflowService meterChangeWorkflowService;
    
    @Inject
    private WorkflowService workflowService;
    
    @Inject
    private MeterStatusRepository meterStatusRepository;
    
    @Inject
    private MeterDetailsRepository meterDetailsRepository;
    
    @Inject
    private StatusMasterRepository statusMasterRepository;
    
    
    /**
     * POST  /meterChanges -> Create a new meterChange.
     */
    @RequestMapping(value = "/meterChanges",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
    public ResponseEntity<MeterChange> createMeterChange(@RequestBody MeterChange meterChange) throws URISyntaxException {
        log.debug("REST request to save MeterChange : {}", meterChange);
        if (meterChange.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("meterChange", "idexists", "A new meterChange cannot already have an ID")).body(null);
        }
        if(meterChange.getStatus()==null){
        	meterChange.setStatus(MeterChangeStatus.INITIATED);
        }
        MeterDetails prevMeter = meterChange.getPrevMeterNo();
        MeterChange result = null;
        //check meter status
        if("Processing".equals(prevMeter.getMeterStatus().getStatus())){
        	//show messages request already processing
        	return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("meterChange", "idexists", "Request for meter change already submitted with this CAN")).body(null);
        }
        else{
        	prevMeter.setMeterStatus(meterStatusRepository.findByStatus("Processing"));
        	meterDetailsRepository.save(prevMeter);
            result = meterChangeRepository.save(meterChange);
          //this is for workflow for new request
            try{
            	workflowService.getUserDetails();
            	workflowService.setAssignedDate(ZonedDateTime.now().toString());
            	meterChangeWorkflowService.createTxn(meterChange);
            }
            catch(Exception e){
            	e.printStackTrace();
            }
        }
        return ResponseEntity.created(new URI("/api/meterChanges/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("meterChange", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /meterChanges -> Updates an existing meterChange.
     */
    @RequestMapping(value = "/meterChanges",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
    public ResponseEntity<MeterChange> updateMeterChange(@RequestBody MeterChange meterChange) throws URISyntaxException {
        log.debug("REST request to update MeterChange : {}", meterChange);
        if (meterChange.getId() == null) {
            return createMeterChange(meterChange);
        }
        
        MeterChange result = meterChangeRepository.save(meterChange);
        
        if("Processing".equals(meterChange.getPrevMeterNo().getMeterStatus().getStatus())){
/*        	MeterDetails prevMeter = meterChange.getPrevMeterNo();
        	prevMeter.setMeterStatus(meterStatusRepository.findByStatus("Processing"));
        	meterDetailsRepository.save(prevMeter);
*/        	
        	MeterDetails meterDetails = meterChange.getNewMeterNo();
        	meterDetails.setMeterStatus(meterStatusRepository.findByStatus("Processing"));
        	meterDetailsRepository.save(meterDetails);
        }
        try{
        	approveMeterChange(meterChange);
        }catch(Exception e){
        	e.printStackTrace();
        }
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("meterChange", meterChange.getId().toString()))
            .body(result);
    }

    /**
     * GET  /meterChanges -> get all the meterChanges.
     */
    @RequestMapping(value = "/meterChanges",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<MeterChange>> getAllMeterChanges(Pageable pageable)
        throws URISyntaxException {
        log.debug("REST request to get a page of MeterChanges");
        Page<MeterChange> page = meterChangeRepository.findAll(pageable); 
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/meterChanges");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /meterChanges/:id -> get the "id" meterChange.
     */
    @RequestMapping(value = "/meterChanges/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<MeterChange> getMeterChange(@PathVariable Long id) {
        log.debug("REST request to get MeterChange : {}", id);
        MeterChange meterChange = meterChangeRepository.findOne(id);
        return Optional.ofNullable(meterChange)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /meterChanges/:id -> delete the "id" meterChange.
     */
    @RequestMapping(value = "/meterChanges/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteMeterChange(@PathVariable Long id) {
        log.debug("REST request to delete MeterChange : {}", id);
        meterChangeRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("meterChange", id.toString())).build();
    }
    
    
    /**
     * this will approve the Meter Change Request
     */
	/*@RequestMapping(value = "/meterChanges/meterChangeApprove", 
			method = RequestMethod.GET, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional
	public ResponseEntity<Void> approveMeterChange(@RequestParam(value = "id", required = false) Long id,
						@RequestParam(value = "remarks", required = false) String remarks)throws Exception{
		workflowService.getUserDetails();
		workflowService.getRequestType();
		MeterChange meterChange = meterChangeRepository.findOne(id);
	    workflowService.setRemarks(remarks);  
        meterChangeWorkflowService.approvedMeterChangeRequest(meterChange);
        return ResponseEntity.ok().build();
	}*/
    
    @RequestMapping(value = "/meterChanges/meterChangeApprove", 
    		method = RequestMethod.POST, 
    		produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional(rollbackFor=Exception.class)
	public ResponseEntity<MeterChange> approveMeterChange(
			@RequestBody MeterChange meterChange) throws URISyntaxException {
		log.debug("REST request to approve MeterChange : {}", meterChange);
		
		try {
			workflowService.setRemarks(meterChange.getRemarks());
			workflowService.setApprovedDate(ZonedDateTime.now());
			workflowService.getUserDetails();
			meterChangeWorkflowService
					.approvedMeterChangeRequest(meterChange);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//TEMPORAY COMMENT
		/*if("INITIATED".equals(meterChange.getStatus())){
        	meterChange.setStatus(MeterChangeStatus.PROCESSING);
        }*/
		meterChange.setStatus(MeterChangeStatus.PROCESSING);
		if(CPSConstants.UPDATE.equals(workflowService.getMessage())){
			MeterDetails prevMeter = meterChange.getPrevMeterNo();
        	prevMeter.setMeterStatus(meterStatusRepository.findByStatus("Fault"));//Status would be according to meter(burnt or stuck)
        	meterDetailsRepository.save(prevMeter);

        	MeterDetails meterDetails = meterChange.getNewMeterNo();
        	meterDetails.setMeterStatus(meterStatusRepository.findByStatus("Allotted"));
        	meterDetailsRepository.save(meterDetails);
			
			CustMeterMapping cmpOld = custMeterMappingRepository.findByCustDetailsAndToDate(meterChange.getCustDetails(), null);
	        cmpOld.setToDate(meterChange.getApprovedDate());
	        custMeterMappingRepository.save(cmpOld);
	        
	        CustMeterMapping custMeterMapping = new CustMeterMapping();
	        custMeterMapping.setMeterDetails(meterChange.getNewMeterNo());
	        custMeterMapping.setCustDetails(meterChange.getCustDetails());
	        custMeterMapping.setFromDate(meterChange.getApprovedDate());
	        custMeterMappingRepository.save(custMeterMapping);
	        /**
	         * For saving details in custDetails.
	         * Code is commented not to save new meter no and reading 
	         */
	        /*CustDetails custDetails = meterChange.getCustDetails();
	        custDetails.setMeterDetails(meterChange.getNewMeterNo());
	        custDetails.setPrevReading(meterChange.getNewMeterReading());
	        custDetailsRepository.save(custDetails);*/
	        //meterChange.setStatus(CPSConstants.METERCHANGED);
	        
	        //TEMPORAY COMMENT
	        meterChange.setStatus(MeterChangeStatus.APPROVED);
	        
		}

		meterChangeRepository.save(meterChange);

		return ResponseEntity.created(new URI("/api/meterChanges/meterChangeApprove/"))
				.headers(HeaderUtil.createEntityCreationAlert("meterChange", ""))
				.body(null);
	}
    
    
    /**
     * Decline the request
     */
    @RequestMapping(value = "/meterChanges/declineRequest",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
	public ResponseEntity<MeterChange> declineRequests(
			@RequestBody MeterChange meterChange)
			throws Exception {
		log.debug("REST request to declineRequest() for Meter Change  : {}", meterChange);
		
		MeterDetails prevMeter = meterChange.getPrevMeterNo();
    	prevMeter.setMeterStatus(meterStatusRepository.findByStatus("Allotted"));//Status would be according to meter(burnt or stuck)
    	meterDetailsRepository.save(prevMeter);
    	
    	if(meterChange.getNewMeterNo() != null){
    		MeterDetails meterDetails = meterChange.getNewMeterNo();
        	meterDetails.setMeterStatus(meterStatusRepository.findByStatus("Unallotted"));
        	meterDetailsRepository.save(meterDetails);
    	}
    	//meterChange.setStatus(2);
    	//TEMPORAY COMMENT
    	meterChange.setStatus(MeterChangeStatus.APPROVED);
    	//meterChange.setStatus(statusMasterRepository.findByStatus(CPSConstants.DECLINED.toUpperCase()).getId().intValue());
    	meterChange.setNewMeterNo(null);
    	meterChange.setNewMeterReading(null);
    	meterChangeRepository.save(meterChange);
		workflowService.setRemarks(meterChange.getRemarks());
		workflowService.setApprovedDate(ZonedDateTime.now());
		meterChangeWorkflowService.declineRequest(meterChange.getId());
		return ResponseEntity.created(new URI("/api/meterChanges/declineRequest/"))
				.headers(HeaderUtil.createEntityCreationAlert("meterChange", ""))
				.body(null);
	}
    
    
    /**
     * Get Active can to change its details
     */
    @RequestMapping(value = "/meterChanges/getActiveCan/{can}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
	public ResponseEntity<MeterChange> getAtiveCan(
			@PathVariable String can)
			throws Exception {
    	log.debug("REST request to getActiveCan() for MeterChange  : {}", can);
		
    	MeterChange meterChange = meterChangeRepository.findPending(can);

    	return Optional.ofNullable(meterChange)
				.map(result -> new ResponseEntity<>(result, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.OK));
	}
}
