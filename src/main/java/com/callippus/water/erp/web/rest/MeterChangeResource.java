package com.callippus.water.erp.web.rest;

import java.net.URI;
import java.net.URISyntaxException;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.domain.CustDetails;
import com.callippus.water.erp.domain.CustMeterMapping;
import com.callippus.water.erp.domain.CustomerComplaints;
import com.callippus.water.erp.domain.MeterChange;
import com.callippus.water.erp.repository.CustDetailsRepository;
import com.callippus.water.erp.repository.CustMeterMappingRepository;
import com.callippus.water.erp.repository.MeterChangeRepository;
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
    private CustDetailsRepository custDetailsRepository;
    
    @Inject
    private MeterChangeWorkflowService meterChangeWorkflowService;
    
    @Inject
    private WorkflowService workflowService;
    
    /**
     * POST  /meterChanges -> Create a new meterChange.
     */
    @RequestMapping(value = "/meterChanges",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<MeterChange> createMeterChange(@RequestBody MeterChange meterChange) throws URISyntaxException {
        log.debug("REST request to save MeterChange : {}", meterChange);
        if (meterChange.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("meterChange", "idexists", "A new meterChange cannot already have an ID")).body(null);
        }
        MeterChange result = meterChangeRepository.save(meterChange);
        
        CustMeterMapping cmpOld = custMeterMappingRepository.findByCustDetailsAndToDate(meterChange.getCustDetails(), null);
        cmpOld.setToDate(meterChange.getApprovedDate());
        custMeterMappingRepository.save(cmpOld);
        
        CustMeterMapping custMeterMapping = new CustMeterMapping();
        custMeterMapping.setMeterDetails(meterChange.getMeterDetails());
        custMeterMapping.setCustDetails(meterChange.getCustDetails());
        custMeterMapping.setFromDate(meterChange.getApprovedDate());
        custMeterMappingRepository.save(custMeterMapping);
        CustDetails custDetails = meterChange.getCustDetails();
        custDetails.setMeterNo(meterChange.getNewMeterNumber());
        custDetails.setPrevReading(meterChange.getNewMeterReading());
        custDetailsRepository.save(custDetails);
        //this is for workflow for new request
        try{
        	workflowService.getUserDetails();
        	meterChangeWorkflowService.createTxn(meterChange);
        }
        catch(Exception e){
        	System.out.println(e);
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
    public ResponseEntity<MeterChange> updateMeterChange(@RequestBody MeterChange meterChange) throws URISyntaxException {
        log.debug("REST request to update MeterChange : {}", meterChange);
        if (meterChange.getId() == null) {
            return createMeterChange(meterChange);
        }
        MeterChange result = meterChangeRepository.save(meterChange);
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
	@RequestMapping(value = "/meterChanges/aprove", 
			method = RequestMethod.GET, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<Void> approveMeterChange(@RequestParam(value = "id", required = false) Long id,
						@RequestParam(value = "remarks", required = false) String remarks)throws Exception{
		workflowService.getUserDetails();
		workflowService.getRequestType();
		MeterChange meterChange = meterChangeRepository.findOne(id);
	    workflowService.setRemarks(remarks);  
        meterChangeWorkflowService.approvedMeterChangeRequest(meterChange);
        return ResponseEntity.ok().build();
	}
}
