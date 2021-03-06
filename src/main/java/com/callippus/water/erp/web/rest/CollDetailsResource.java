package com.callippus.water.erp.web.rest;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
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

import com.callippus.water.erp.domain.CollDetails;
import com.callippus.water.erp.domain.EmpRoleMapping;
import com.callippus.water.erp.domain.PaymentTypes;
import com.callippus.water.erp.domain.TariffCategoryMaster;
import com.callippus.water.erp.domain.User;
import com.callippus.water.erp.repository.CollDetailsRepository;
import com.callippus.water.erp.repository.CustDetailsRepository;
import com.callippus.water.erp.repository.PaymentTypesRepository;
import com.callippus.water.erp.repository.ReportsCustomRepository;
import com.callippus.water.erp.repository.UserRepository;
import com.callippus.water.erp.security.SecurityUtils;
import com.callippus.water.erp.service.PaymentService;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing CollDetails.
 */
@RestController
@RequestMapping("/api")
public class CollDetailsResource {

	private final Logger log = LoggerFactory
			.getLogger(CollDetailsResource.class);

	@Inject
	private CollDetailsRepository collDetailsRepository;

	@Inject
	private CustDetailsRepository custDetailsRepository;

	@Inject
	private ReportsCustomRepository reportsRepository;
	
	@Inject
	private PaymentService paymentService;
	
	@Inject
	private UserRepository userRepository;
	
	@Inject
	private PaymentTypesRepository paymentTypesRepository;

	/**
	 * POST /collDetailss -> Create a new collDetails.
	 */
	@RequestMapping(value = "/collDetailss", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional
	public ResponseEntity<CollDetails> createCollDetails(
			@RequestBody CollDetails collDetails) throws URISyntaxException, Exception {
		log.debug("REST request to save CollDetails : {}", collDetails);
		if (collDetails.getId() != null) {
			return ResponseEntity
					.badRequest()
					.headers(
							HeaderUtil
									.createFailureAlert("collDetails",
											"idexists",
											"A new collDetails cannot already have an ID"))
					.body(null);
		}
		User user = userRepository.findOneByLogin(SecurityUtils.getCurrentUser().getUsername()).get();
		collDetails.setUserId(user.getFirstName()+" "+user.getLastName());
		collDetails.setReceiptMode(collDetails.getPaymentTypes().getPaymentMode());
		
		CollDetails result = collDetailsRepository.save(collDetails);
		
		paymentService.postPayment(result, collDetails.getReceiptAmt());

		return ResponseEntity
				.created(new URI("/api/collDetailss/" + result.getId()))
				.headers(
						HeaderUtil.createEntityCreationAlert("collDetails",
								result.getId().toString())).body(result);
	}
	
	/**
	 * POST /revDetailss -> Create a new revDetails.
	 */
	@RequestMapping(value = "/revDetailss", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional
	public ResponseEntity<CollDetails> createRevDetails(
			@RequestBody CollDetails collDetails) throws URISyntaxException {
		log.debug("REST request to save CollDetails : {}", collDetails);
		if (collDetails.getId() != null) {
			return ResponseEntity
					.badRequest()
					.headers(
							HeaderUtil
									.createFailureAlert("collDetails",
											"idexists",
											"A new collDetails cannot already have an ID"))
					.body(null);
		}
		CollDetails result = collDetailsRepository.save(collDetails);
		
		return ResponseEntity
				.created(new URI("/api/revDetailss/" + result.getId()))
				.headers(
						HeaderUtil.createEntityCreationAlert("collDetails",
								result.getId().toString())).body(result);
	}

	/**
	 * PUT /collDetailss -> Updates an existing collDetails.
	 */
	@RequestMapping(value = "/collDetailss", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<CollDetails> updateCollDetails(
			@RequestBody CollDetails collDetails) throws URISyntaxException, Exception {
		log.debug("REST request to update CollDetails : {}", collDetails);
		if (collDetails.getId() == null) {
			return createCollDetails(collDetails);
		}
		CollDetails result = collDetailsRepository.save(collDetails);
		return ResponseEntity
				.ok()
				.headers(
						HeaderUtil.createEntityUpdateAlert("collDetails",
								collDetails.getId().toString())).body(result);
	}

	/**
	 * GET /collDetailss -> get all the collDetailss.
	 */
	@RequestMapping(value = "/collDetailss", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<List<CollDetails>> getAllCollDetailss(
			Pageable pageable,
			@RequestParam(value = "txnStatus", required = false) String txnStatus,
			@RequestParam(value = "can", required = false) String can)
			throws URISyntaxException {
		log.debug("REST request to get a page of CollDetailss");
		Page<CollDetails> page;
		if (txnStatus != null) {
			page = collDetailsRepository.findByTxnStatusOrderByIdDesc(pageable, txnStatus);
		} else 
			if(can != null) {
				page = collDetailsRepository.findByCan(pageable, can);
		}
			else{
				page = collDetailsRepository.findAll(pageable);
			}
		HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(
				page, "/api/collDetailss");
		return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
	}

	/**
	 * GET /collDetailss/:id -> get the "id" collDetails.
	 */
	@RequestMapping(value = "/collDetailss/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<CollDetails> getCollDetails(@PathVariable Long id) {
		log.debug("REST request to get CollDetails : {}", id);
		CollDetails collDetails = collDetailsRepository.findOne(id);
		return Optional.ofNullable(collDetails)
				.map(result -> new ResponseEntity<>(result, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}

	/**
	 * DELETE /collDetailss/:id -> delete the "id" collDetails.
	 */
	@RequestMapping(value = "/collDetailss/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<Void> deleteCollDetails(@PathVariable Long id) {
		log.debug("REST request to delete CollDetails : {}", id);
		collDetailsRepository.delete(id);
		return ResponseEntity
				.ok()
				.headers(
						HeaderUtil.createEntityDeletionAlert("collDetails",
								id.toString())).build();
	}

	/**
	 * Display Requisition report
	 */
	@RequestMapping(value = "/collDetailss/report/{id}", method = RequestMethod.GET)
	@ResponseBody
	public void getApplicationTxnReport(HttpServletResponse response,
			@PathVariable Long id) throws JRException, IOException {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);

		JasperPrint jasperPrint = reportsRepository.generateReport(
				"/reports/Receipt.jasper", params);
		response.setContentType("application/x-pdf");
		response.setHeader("Content-disposition", "inline; filename=Receipt_"
				+ id + ".pdf");

		final OutputStream outStream = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	}
	
	

	/**
	 * GET /collDetailss/forCancel/:can
	 */
	@RequestMapping(value = "/collDetailss/forCancel/{can}", 
			method = RequestMethod.GET, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<List<CollDetails>> getCollDetails(@PathVariable String can) {
		log.debug("REST request to get CollDetails : {}", can);
		//String reversalRef = "";
		List<CollDetails> collDetailss = collDetailsRepository.findTop10ByCanAndReversalRefOrderByIdDesc(can, "");

		return Optional.ofNullable(collDetailss)
				.map(result -> new ResponseEntity<>(collDetailss, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}
	
	
		//added to Cancel collection Details(no more used because created reversal Detail entity)
		@RequestMapping(value = "/collDetailss/collDetailsCancel", 
				method = RequestMethod.POST, 
				produces = MediaType.APPLICATION_JSON_VALUE)
		@Timed	
		public ResponseEntity<CollDetails> collDetailsCancel(
				@RequestBody CollDetails collDetails) throws URISyntaxException { 
			log.debug("REST request to cancel Collection : {}", collDetails);
			//String newRemarks = collDetails.getRemarks();
			//String oldRemarks = collDetailsRepository.findOne(collDetails.getId()).getRemarks();
			collDetails.setRemarks(collDetailsRepository.findOne(collDetails.getId()).getRemarks()+"("+collDetails.getRemarks()+")");
			collDetails.setTxnStatus("CANCELLED");
			
			CollDetails result = collDetails;//collDetailsRepository.save(collDetails);
			
			return ResponseEntity.ok().headers(	HeaderUtil.createEntityUpdateAlert("collDetails",
					collDetails.getId().toString())).body(result);

		}
		
		
		 /**
	     * Get All payment_types
	     */
	    @RequestMapping(value = "/paymentTypes/getAll",
	            method = RequestMethod.GET,
	            produces = MediaType.APPLICATION_JSON_VALUE)
	    @Timed
		public ResponseEntity<List<PaymentTypes>> getAllPaymentTypes()
				throws Exception {
	    	log.debug("REST request to getAllpayment_typess : {}");
	    	
	    	PaymentTypes cd = new PaymentTypes();
	    	cd.setId(0l);
	    	cd.setPaymentMode("All");;
	    	List<PaymentTypes> coll = new ArrayList<PaymentTypes>();
	    	coll.add(cd);
	    	List<PaymentTypes> coll1= paymentTypesRepository.findAll();
	    	coll.addAll(coll1);
	    	
	    	return Optional.ofNullable(coll)
					.map(result -> new ResponseEntity<>(coll, HttpStatus.OK))
					.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
		}
		
		
		

	    /**
	     * Revenue Summary Report
	     */
	    @RequestMapping(value="Revenue/reports/{dmaId}/{categoryId}/{toMonth}",  method = RequestMethod.GET)
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
	    	jasperPrint=reportsRepository.generateReport("/reports/RevenueSummaryReport.jasper", params);
	    	response.setContentType("application/x-pdf");
	    	response.setHeader("Content-disposition", "inline; filename=RevenueSummaryReport.pdf");
	    	final OutputStream outStream = response.getOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	    }
	
	    
	    /**
	     * Get CollDetails by CAN
	     */
	    @RequestMapping(value = "/collDetailss/getCollDetailsByCAN",
	            method = RequestMethod.GET,
	            produces = MediaType.APPLICATION_JSON_VALUE)
	    @Timed
		public ResponseEntity<List<CollDetails>> getCollDetailsByCan(@Param("can") String can)
				throws Exception {
	    	log.debug("REST request to collDetails by CAN : {}");
	    	
	    	List<CollDetails> collDetails = collDetailsRepository.findTop10ByCanOrderByIdDesc(can);
	    	
	    	return Optional.ofNullable(collDetails)
					.map(result -> new ResponseEntity<>(collDetails, HttpStatus.OK))
					.orElse(new ResponseEntity<>(HttpStatus.OK));
		}
	    
	    
	}
	
	

