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
import com.callippus.water.erp.domain.ConnectionTerminate;
import com.callippus.water.erp.domain.CustDetails;
import com.callippus.water.erp.domain.CustMeterMapping;
import com.callippus.water.erp.domain.MeterChange;
import com.callippus.water.erp.domain.MeterDetails;
import com.callippus.water.erp.domain.WorkflowDTO;
import com.callippus.water.erp.domain.enumeration.CustStatus;
import com.callippus.water.erp.repository.ConnectionTerminateRepository;
import com.callippus.water.erp.repository.CustDetailsRepository;
import com.callippus.water.erp.repository.CustMeterMappingRepository;
import com.callippus.water.erp.repository.MeterDetailsRepository;
import com.callippus.water.erp.repository.MeterStatusRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import com.callippus.water.erp.workflow.applicationtxn.service.ConnectionTerminateWorkflowService;
import com.callippus.water.erp.workflow.service.WorkflowService;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing ConnectionTerminate.
 */
@RestController
@RequestMapping("/api")
public class ConnectionTerminateResource {

    private final Logger log = LoggerFactory.getLogger(ConnectionTerminateResource.class);
        
    @Inject
    private ConnectionTerminateRepository connectionTerminateRepository;
    
    @Inject
    private WorkflowService workflowService;
    
    @Inject
    private ConnectionTerminateWorkflowService connectionTerminateWorkflowService;
    
    @Inject
    private CustDetailsRepository custDetailsRepository;
    
    @Inject
    private MeterStatusRepository meterStatusRepository;
    
    @Inject
    private MeterDetailsRepository meterDetailsRepository;
    
    @Inject
    private CustMeterMappingRepository custMeterMappingRepository;
    
    /**
     * POST  /connectionTerminates -> Create a new connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
    public ResponseEntity<ConnectionTerminate> createConnectionTerminate(@RequestBody ConnectionTerminate connectionTerminate) throws URISyntaxException {
        log.debug("REST request to save ConnectionTerminate : {}", connectionTerminate);
        if (connectionTerminate.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("connectionTerminate", "idexists", "A new connectionTerminate cannot already have an ID")).body(null);
        }
        CustDetails custDetails= custDetailsRepository.findByCanForUpdate(connectionTerminate.getCan());
        if(custDetails.getStatus()==CustStatus.TERMINATED){
        	return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("connectionTerminate", "idexists", "Connection already terminated")).body(null);
        }
        if(custDetails.getStatus()==CustStatus.PROCESSING){
        	return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("connectionTerminate", "idexists", "Request already submitted for termination")).body(null);
        }
        if(custDetails.getStatus()==CustStatus.ACTIVE){
        	custDetails.setStatus(CustStatus.PROCESSING);
        }
        custDetailsRepository.save(custDetails);
        ConnectionTerminate result = connectionTerminateRepository.save(connectionTerminate);
        try {
			workflowService.getUserDetails();
			workflowService.setAssignedDate(ZonedDateTime.now().toString());
			connectionTerminateWorkflowService.createTxn(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
        return ResponseEntity.created(new URI("/api/connectionTerminates/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("connectionTerminate", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /connectionTerminates -> Updates an existing connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<ConnectionTerminate> updateConnectionTerminate(@RequestBody ConnectionTerminate connectionTerminate) throws URISyntaxException {
        log.debug("REST request to update ConnectionTerminate : {}", connectionTerminate);
        if (connectionTerminate.getId() == null) {
            return createConnectionTerminate(connectionTerminate);
        }
        ConnectionTerminate result = connectionTerminateRepository.save(connectionTerminate);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("connectionTerminate", connectionTerminate.getId().toString()))
            .body(result);
    }

    /**
     * GET  /connectionTerminates -> get all the connectionTerminates.
     */
    @RequestMapping(value = "/connectionTerminates",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<ConnectionTerminate>> getAllConnectionTerminates(Pageable pageable)
        throws URISyntaxException {
        log.debug("REST request to get a page of ConnectionTerminates");
        Page<ConnectionTerminate> page = connectionTerminateRepository.findAll(pageable); 
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/connectionTerminates");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /connectionTerminates/:id -> get the "id" connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<ConnectionTerminate> getConnectionTerminate(@PathVariable Long id) {
        log.debug("REST request to get ConnectionTerminate : {}", id);
        ConnectionTerminate connectionTerminate = connectionTerminateRepository.findOne(id);
        return Optional.ofNullable(connectionTerminate)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /connectionTerminates/:id -> delete the "id" connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteConnectionTerminate(@PathVariable Long id) {
        log.debug("REST request to delete ConnectionTerminate : {}", id);
        connectionTerminateRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("connectionTerminate", id.toString())).build();
    }
    
    
    
    /**
     * APPROVE  /connectionTerminates/approve -> terminate the "CAN" connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates/approve", 
    		method = RequestMethod.POST, 
    		produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional(rollbackFor=Exception.class)
	public ResponseEntity<ConnectionTerminate> approveCategoryChange(
			@RequestBody WorkflowDTO workflowDTO) throws URISyntaxException {
		log.debug("REST request to terminate Connection : {}", workflowDTO);

		ConnectionTerminate connectionTerminate = workflowDTO.getConnectionTerminate();
		
		connectionTerminateRepository.save(connectionTerminate);
		try {
			workflowService.setRemarks(workflowDTO.getRemarks());
			workflowService.setApprovedDate(workflowDTO.getApprovedDate());
			workflowService.getUserDetails();
			connectionTerminateWorkflowService
					.approvedCahangeCaseRequest(connectionTerminate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(CPSConstants.UPDATE.equals(workflowService.getMessage())){
			CustDetails custDetails = custDetailsRepository.findByCanForUpdate(connectionTerminate.getCan());
			custDetails.setStatus(CustStatus.TERMINATED);
			custDetailsRepository.save(custDetails);
			
			MeterDetails meterDetails = connectionTerminate.getMeterDetails();
			meterDetails.setMeterStatus(meterStatusRepository.findByStatus("Unallotted"));
			meterDetailsRepository.save(meterDetails);
			
			CustMeterMapping cmpOld = custMeterMappingRepository.findByCustDetailsAndToDate(custDetails, null);
	        cmpOld.setToDate(connectionTerminate.getMeterRecoveredDate());
	        custMeterMappingRepository.save(cmpOld);
		}
		
        
		
		return ResponseEntity.created(new URI("/api/connectionTerminates/"))
				.headers(HeaderUtil.createEntityCreationAlert("connectionTerminate", ""))
				.body(null);
	}
    
    /**
     * Decline the request
     */
    @RequestMapping(value = "/connectionTerminates/declineRequest",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
	public ResponseEntity<ConnectionTerminate> declineRequests(
			@RequestBody WorkflowDTO workflowDTO)
			throws Exception {
		log.debug("REST request to declineRequest() for Connection Terminate  : {}", workflowDTO);
		
		workflowService.setRemarks(workflowDTO.getRemarks());
		workflowService.setApprovedDate(workflowDTO.getApprovedDate());
		CustDetails custDetails = custDetailsRepository.findByCan(workflowDTO.getConnectionTerminate().getCan());
		custDetails.setStatus(CustStatus.ACTIVE);
		custDetailsRepository.save(custDetails);
		connectionTerminateWorkflowService.declineRequest(workflowDTO.getConnectionTerminate().getId());
		return ResponseEntity.created(new URI("/api/connectionTerminates/declineRequest/"))
				.headers(HeaderUtil.createEntityCreationAlert("connectionTerminate", ""))
				.body(null);
	}
}
