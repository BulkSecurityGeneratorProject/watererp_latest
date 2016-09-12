package com.callippus.water.erp.web.rest;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.domain.BillAndCollectionDTO;
import com.callippus.water.erp.domain.BillFullDetails;
import com.callippus.water.erp.domain.DivisionMaster;
import com.callippus.water.erp.domain.TariffCategoryMaster;
import com.callippus.water.erp.repository.BillDetailsCustomRepository;
import com.callippus.water.erp.repository.BillFullDetailsRepository;
import com.callippus.water.erp.repository.BillRunDetailsRepository;
import com.callippus.water.erp.repository.DivisionMasterRepository;
import com.callippus.water.erp.repository.ReportsCustomRepository;
import com.callippus.water.erp.repository.TariffCategoryMasterRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import com.codahale.metrics.annotation.Timed;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 * REST controller for managing BillFullDetails.
 */
@RestController
@RequestMapping("/api")
public class BillFullDetailsResource {

    private final Logger log = LoggerFactory.getLogger(BillFullDetailsResource.class);
        
    @Inject
    private BillFullDetailsRepository billFullDetailsRepository;
    
    @Inject
    private BillRunDetailsRepository billRunDetailsRepository;
    
    @Inject
    private ReportsCustomRepository reportsRepository;    

	@Inject
	BillDetailsCustomRepository billDetailsCustomRepository;

	@Inject
	DivisionMasterRepository divisionMasterRepository;
	
	@Inject TariffCategoryMasterRepository tariffCategoryMasterRepository;
	
    /**
     * POST  /billFullDetailss -> Create a new billFullDetails.
     */
    @RequestMapping(value = "/billFullDetailss",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillFullDetails> createBillFullDetails(@Valid @RequestBody BillFullDetails billFullDetails) throws URISyntaxException {
        log.debug("REST request to save BillFullDetails : {}", billFullDetails);
        if (billFullDetails.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("billFullDetails", "idexists", "A new billFullDetails cannot already have an ID")).body(null);
        }
        BillFullDetails result = billFullDetailsRepository.save(billFullDetails);
        return ResponseEntity.created(new URI("/api/billFullDetailss/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("billFullDetails", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /billFullDetailss -> Updates an existing billFullDetails.
     */
    @RequestMapping(value = "/billFullDetailss",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillFullDetails> updateBillFullDetails(@Valid @RequestBody BillFullDetails billFullDetails) throws URISyntaxException {
        log.debug("REST request to update BillFullDetails : {}", billFullDetails);
        if (billFullDetails.getId() == null) {
            return createBillFullDetails(billFullDetails);
        }
        BillFullDetails result = billFullDetailsRepository.save(billFullDetails);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("billFullDetails", billFullDetails.getId().toString()))
            .body(result);
    }

    /**
     * GET  /billFullDetailss -> get all the billFullDetailss.
     */
    @RequestMapping(value = "/billFullDetailss",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<BillFullDetails>> getAllBillFullDetailss(Pageable pageable,
    		@RequestParam(value = "can", required = false) String can)
        throws URISyntaxException {
        log.debug("REST request to get a page of BillFullDetailss");
        //Page<BillFullDetails> page = billFullDetailsRepository.findAll(pageable); 
        Page<BillFullDetails> page;
        if(can == null){
        	page = billFullDetailsRepository.findAll(pageable);
        }
        else
        {
        	page = billFullDetailsRepository.findByCan(pageable, can);
        }
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/billFullDetailss");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /billFullDetailss/:id -> get the "id" billFullDetails.
     */
    @RequestMapping(value = "/billFullDetailss/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillFullDetails> getBillFullDetails(@PathVariable Long id) {
        log.debug("REST request to get BillFullDetails : {}", id);
        BillFullDetails billFullDetails = billFullDetailsRepository.findOne(id);
        return Optional.ofNullable(billFullDetails)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /billFullDetailss/:id -> delete the "id" billFullDetails.
     */
    @RequestMapping(value = "/billFullDetailss/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteBillFullDetails(@PathVariable Long id) {
        log.debug("REST request to delete BillFullDetails : {}", id);
        billFullDetailsRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("billFullDetails", id.toString())).build();
    }
    
	
	
	/**
	 * Bill report
	 */
	@RequestMapping(value = "/billFullDetailss/report/{id}", method = RequestMethod.GET)
	@ResponseBody
	public void getApplicationTxnReport(HttpServletResponse response, @PathVariable Long id) throws JRException,
			IOException {
		
		Map<String, Object> params = new HashMap<String,Object>();
		params.put("id",id);

		JasperPrint jasperPrint = reportsRepository
				.generateReport("/reports/Bill.jasper", params);
		response.setContentType("application/x-pdf");
		response.setHeader("Content-disposition",
				"inline; filename=Bill_" + id + ".pdf");

		final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	}
	
	
    @RequestMapping(value = "/billFullDetailss", method = RequestMethod.GET,
            params = {"can", "billDate"})
		    public ResponseEntity<BillFullDetails> getBillDetails(@RequestParam(value = "can") String can, @RequestParam(value = "billDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)  LocalDate billDate) {
		        log.debug("REST request to get Proceedings : {}, bill date: {}", can, billDate);
		        BillFullDetails billFullDetails = billFullDetailsRepository.findByCanAndBillDate(can, billDate);
		        return Optional.ofNullable(billFullDetails)
		            .map(result -> new ResponseEntity<>(
		                result,
		                HttpStatus.OK))
		            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
		    }

	/**
	 * GET /billFullDetailss/getWaterBillDetails/:can
	 */
	@RequestMapping(value = "/billFullDetailss/getWaterBillDetails/{can}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<List<BillAndCollectionDTO>> getWaterBillDetails(@PathVariable String can) {
		log.debug("REST request to get BillFullDetails : {}", can);

		List<BillAndCollectionDTO> billAndCollectionDTO = billDetailsCustomRepository.getBillCollection(can);

		return Optional.ofNullable(billAndCollectionDTO)
				.map(result -> new ResponseEntity<>(billAndCollectionDTO, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}
	
	 /**
     * Get By Category PDF4
     * @throws ParseException 
     * Collection Bill Report
     */
    @RequestMapping(value = "/BillFullDetailss/reports/{dmaId}/{categoryId}/{year}/{month}", method = RequestMethod.GET)
	@ResponseBody
	public void getBillReportDetails(HttpServletResponse response,
			@PathVariable Long dmaId, @PathVariable Long categoryId , @PathVariable String year , @PathVariable String month) throws JRException,
			IOException, ParseException {
    	log.debug("REST request to save Customer : {}", categoryId);
   	
    	
		Map<String, Object> params = new HashMap<String,Object>();
		params.put("dmaId", dmaId);
		params.put("categoryId", categoryId);
		params.put("year", year);
		params.put("month", month);
		if(dmaId!=0 && categoryId!=0)
		{
			DivisionMaster division = divisionMasterRepository.findOne(dmaId);
			params.put("divisionName", division.getDivisionName());
			
			TariffCategoryMaster tcm = tariffCategoryMasterRepository.findOne(categoryId);
			params.put("categoryName", tcm.getTariffCategory());
		}
		else if(dmaId==0 && categoryId!=0)
		{
			params.put("divisionName", 0);
			TariffCategoryMaster tcm = tariffCategoryMasterRepository.findOne(categoryId);
			params.put("categoryName", tcm.getTariffCategory());
		}
		else if(dmaId!=0 && categoryId==0)
		{
			DivisionMaster division = divisionMasterRepository.findOne(dmaId);
			params.put("divisionName", division.getDivisionName());
			params.put("categoryName", 0);
		}
		else
		{
			params.put("divisionName", 0);
			params.put("categoryName", 0);
		}
		JasperPrint jasperPrint = null;
		
			 jasperPrint = reportsRepository
					.generateReport("/reports/BillReport.jasper", params);
		response.setContentType("application/x-pdf");
		response.setHeader("Content-disposition",
				"inline; filename=BillReportDetails.pdf");

		final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	} 
    
    /**
     * Age Analysis Report
     */
    @RequestMapping(value="ageAnalysis/report/{dmaId}/{categoryId}",  method = RequestMethod.GET)
    @ResponseBody
    public void getAgeAnalysisReport(HttpServletResponse response , @PathVariable Long dmaId, @PathVariable Long categoryId)throws JRException,
    IOException,ParseException
    {
    	Map<String,Object> params=new HashMap <String,Object>();
    	params.put("dmaId", dmaId);
    	params.put("categoryId", categoryId);
    	JasperPrint jasperPrint=null;
    	jasperPrint=reportsRepository.generateReport("/reports/AgeAnalysis.jasper", params);
    	response.setContentType("application/x-pdf");
    	response.setHeader("Content-disposition", "inline; filename=AgeAnalysis.pdf");
    	final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
    	
    }
    
    
    
    
    /**
     * Age Analysis Report2
     */
    @RequestMapping(value="ageAnalysisMobile/report/{dmaId}/{categoryId}",  method = RequestMethod.GET)
    @ResponseBody
    public void getAgeAnalysisReport2(HttpServletResponse response , @PathVariable Long dmaId, @PathVariable Long categoryId)throws JRException,
    IOException,ParseException
    {
    	Map<String,Object> params=new HashMap <String,Object>();
    	params.put("dmaId", dmaId);
    	params.put("categoryId", categoryId);
    	JasperPrint jasperPrint=null;
    	jasperPrint=reportsRepository.generateReport("/reports/AgeAnalysis-2.jasper", params);
    	response.setContentType("application/x-pdf");
    	response.setHeader("Content-disposition", "inline; filename=AgeAnalysisReport.pdf");
    	final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
    	
    }
    /**
     * Water Bill Report
     */
    @RequestMapping(value="waterBilling/report/{dmaId}/{categoryId}/{toMonth}",  method = RequestMethod.GET)
    @ResponseBody
    public void getAgeAnalysisReport(HttpServletResponse response , @PathVariable Long dmaId, @PathVariable Long categoryId,
    		                          @PathVariable String toMonth)throws JRException,
    IOException,ParseException
    {
    	Map<String,Object> params=new HashMap <String,Object>();
    	params.put("dmaId", dmaId);
    	params.put("categoryId", categoryId);
    	params.put("toMonth", toMonth);
    	JasperPrint jasperPrint=null;
    	jasperPrint=reportsRepository.generateReport("/reports/Water Billing Summary.jasper", params);
    	response.setContentType("application/x-pdf");
    	response.setHeader("Content-disposition", "inline; filename=WaterBilling.pdf");
    	final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
    	
    }
    
}
    

