package com.callippus.water.erp.web.rest;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.domain.ApplicationTxn;
import com.callippus.water.erp.domain.BurstComplaint;
import com.callippus.water.erp.domain.FeasibilityStudy;
import com.callippus.water.erp.repository.ApplicationTxnRepository;
import com.callippus.water.erp.repository.FeasibilityStudyRepository;
import com.callippus.water.erp.repository.ReportsCustomRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.workflow.applicationtxn.service.ApplicationTxnWorkflowService;
import com.callippus.water.erp.workflow.service.WorkflowService;
import com.codahale.metrics.annotation.Timed;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 * REST controller for managing FeasibilityStudy.
 */
@RestController
@RequestMapping("/api")
public class FeasibilityStudyResource {

    private final Logger log = LoggerFactory.getLogger(FeasibilityStudyResource.class);
        
    @Inject
    private FeasibilityStudyRepository feasibilityStudyRepository;
    
    @Inject
    private WorkflowService workflowService;
    
	@Inject
	private ReportsCustomRepository reportsRepository;
	
    @Inject
    private ApplicationTxnRepository applicationTxnRepository;
    
    @Inject
    private ApplicationTxnWorkflowService applicationTxnWorkflowService;
    
    @Inject
    private ApplicationTxnResource applicationTxnResource; 
    
    /**
     * POST  /feasibilityStudys -> Create a new feasibilityStudy.
     */
    @RequestMapping(value = "/feasibilityStudys",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
    public ResponseEntity<FeasibilityStudy> createFeasibilityStudy(@RequestBody FeasibilityStudy feasibilityStudy) throws URISyntaxException {
        log.debug("REST request to save FeasibilityStudy : {}", feasibilityStudy);
        if (feasibilityStudy.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("feasibilityStudy", "idexists", "A new feasibilityStudy cannot already have an ID")).body(null);
        }
        ZonedDateTime now = ZonedDateTime.now();
        feasibilityStudy.setCreatedDate(now);
        feasibilityStudy.setModifiedDate(now);
        feasibilityStudy.setStatus(0);

        FeasibilityStudy result = feasibilityStudyRepository.save(feasibilityStudy);
        ApplicationTxn applicationTxn = applicationTxnRepository.findOne(feasibilityStudy.getApplicationTxn().getId());
        applicationTxn.setRemarks(feasibilityStudy.getApplicationTxn().getRemarks());
        applicationTxn.setDivisionMaster(feasibilityStudy.getDivisionMaster());
        applicationTxn.setStreetMaster(feasibilityStudy.getStreetMaster());
        
        applicationTxnRepository.save(applicationTxn);
        try{
        	workflowService.setApprovedDate(ZonedDateTime.now());
        	applicationTxnWorkflowService.approveRequest(applicationTxn.getId(), applicationTxn.getRemarks());
        }
        catch(Exception e){
        	System.out.println(e);
        }
        
        
        return ResponseEntity.created(new URI("/api/feasibilityStudys/" + result.getId()))
            .headers(HeaderUtil.createAlert("New Feasibility Study initiated.", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /feasibilityStudys -> Updates an existing feasibilityStudy.
     */
    @RequestMapping(value = "/feasibilityStudys",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<FeasibilityStudy> updateFeasibilityStudy(@RequestBody FeasibilityStudy feasibilityStudy) throws URISyntaxException {
        log.debug("REST request to update FeasibilityStudy : {}", feasibilityStudy);
        if (feasibilityStudy.getId() == null) {
            return createFeasibilityStudy(feasibilityStudy);
        }
        ZonedDateTime now = ZonedDateTime.now();
        feasibilityStudy.setModifiedDate(now);
        FeasibilityStudy result = feasibilityStudyRepository.save(feasibilityStudy);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("feasibilityStudy", feasibilityStudy.getId().toString()))
            .body(result);
    }

    /**
     * GET  /feasibilityStudys -> get all the feasibilityStudys.
     */
    @RequestMapping(value = "/feasibilityStudys",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public List<FeasibilityStudy> getAllFeasibilityStudys() {
        log.debug("REST request to get all FeasibilityStudys");
        return feasibilityStudyRepository.findAll();
            }

    /**
     * GET  /feasibilityStudys/:id -> get the "id" feasibilityStudy.
     */
    @RequestMapping(value = "/feasibilityStudys/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<FeasibilityStudy> getFeasibilityStudy(@PathVariable Long id) {
        log.debug("REST request to get FeasibilityStudy : {}", id);
        FeasibilityStudy feasibilityStudy = feasibilityStudyRepository.findOne(id);
        return Optional.ofNullable(feasibilityStudy)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /feasibilityStudys/:id -> delete the "id" feasibilityStudy.
     */
    @RequestMapping(value = "/feasibilityStudys/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteFeasibilityStudy(@PathVariable Long id) {
        log.debug("REST request to delete FeasibilityStudy : {}", id);
        feasibilityStudyRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("feasibilityStudy", id.toString())).build();
    }
    
    /**
     * GET  /feasibilityStudys/:applicationTxnId -> get the "applicationTxn" feasibilityStudy.
     */
    @RequestMapping(value = "/feasibilityStudyss/custom/{applicationTxnId}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<FeasibilityStudy> getFeasibilityStudyByApplicationTxn(@PathVariable Long applicationTxnId) {
        log.debug("REST request to get Proceedings : {}", applicationTxnId);
        ApplicationTxn applicationTxn = applicationTxnRepository.getOne(applicationTxnId);
        FeasibilityStudy feasibilityStudy = feasibilityStudyRepository.findByApplicationTxn(applicationTxn);
        return Optional.ofNullable(feasibilityStudy)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }
    
    /**
     * Get FeasibilityStudy by applicationTxnId
     */
    @RequestMapping(value = "/feasibilityStudys/getByApplicationTxnId",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
	public ResponseEntity<FeasibilityStudy> getFeasibilityStudyByapplicationTxnId(@Param("applicationTxnId") Long applicationTxnId)
			throws Exception {
    	log.debug("REST request to FeasibilityStudy by applicationTxnId : {}");
    	
    	FeasibilityStudy feasibilityStudy = feasibilityStudyRepository.findByApplicationTxn(applicationTxnRepository.findOne(applicationTxnId));
    
    	return Optional.ofNullable(feasibilityStudy)
				.map(result -> new ResponseEntity<>(feasibilityStudy, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}
    
    /**
     * Get By Feasibility Study Report
     * @throws ParseException 
     */
    @RequestMapping(value = "/feasibilityStudy/report/{applicationNo}", method = RequestMethod.GET)
	@ResponseBody
	public void getFeasibilityDetails(HttpServletResponse response,
			@PathVariable Long applicationNo) throws JRException,
			IOException, ParseException {
    	log.debug("REST request to save Customer : {}", applicationNo);
   	
    	
    	
		Map<String, Object> params = new HashMap<String,Object>();
		params.put("applicationNo", applicationNo);
	
		JasperPrint jasperPrint = null;
					 jasperPrint = reportsRepository
					.generateReport("/reports/FeasibilityStudy.jasper", params);
		
		response.setContentType("application/x-pdf");
		response.setHeader("Content-disposition",
				"inline; filename=FeasibilityStudy.pdf");

		final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	}
     
}
