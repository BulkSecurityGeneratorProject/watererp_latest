package com.callippus.water.erp.web.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.common.CPSConstants;
import com.callippus.water.erp.domain.CustDetails;
import com.callippus.water.erp.domain.Customer;
import com.callippus.water.erp.domain.EmpRoleMapping;
import com.callippus.water.erp.domain.ChangeCaseDTO;
import com.callippus.water.erp.domain.enumeration.ChangeCaseStatus;
import com.callippus.water.erp.domain.enumeration.ChangeCaseType;
import com.callippus.water.erp.repository.ApplicationTxnRepository;
import com.callippus.water.erp.repository.CustDetailsRepository;
import com.callippus.water.erp.repository.CustomerRepository;
import com.callippus.water.erp.repository.ReceiptRepository;
import com.callippus.water.erp.repository.StatusMasterRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import com.callippus.water.erp.workflow.applicationtxn.service.CustDetailsChangeWorkflowService;
import com.callippus.water.erp.workflow.service.WorkflowService;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing Customer.
 */
@RestController
@RequestMapping("/api")
public class CustomerResource {

	private final Logger log = LoggerFactory.getLogger(CustomerResource.class);

	@Inject
	private CustomerRepository customerRepository;

	@Inject
	private WorkflowService workflowService;

	@Inject
	private CustDetailsChangeWorkflowService custDetailsChangeWorkflowService;

	@Inject
	private CustDetailsRepository custDetailsRepository;
	
	@Inject
	private ReceiptRepository receiptRepository;
	
	@Inject
	private ApplicationTxnRepository applicationTxnRepository;
	
	@Inject
	private StatusMasterRepository statusMasterRepository;
	
	/**
	 * POST /customers -> Create a new customer.
	 */
	@RequestMapping(value = "/customers", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional(rollbackFor=Exception.class)
	public ResponseEntity<Customer> createCustomer(HttpServletRequest request,
			@RequestBody Customer customer) throws URISyntaxException,
			Exception {
		log.debug("REST request to save Customer : {}", customer);
		if (customer.getId() != null) {
			return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("customer","idexists","A new customer cannot already have an ID")).body(null);
		}
		customer.setPhoto("");
		customer.setStatus(ChangeCaseStatus.INITIATED);
		customerRepository.save(customer);
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("photo", "setPhoto");
		UploadDownloadResource.setValues(customer, hm, request,
				customer.getId());
		
		Customer result = customerRepository.save(customer);
		try {
			workflowService.setAssignedDate(ZonedDateTime.now().toString());
			workflowService.setRemarks(customer.getRemarks());
			workflowService.getUserDetails();
			custDetailsChangeWorkflowService.createTxn(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.created(new URI("/api/customers/" + result.getId())).headers(HeaderUtil.createEntityCreationAlert("customer", result.getId().toString())).body(result);
	}

	/**
	 * PUT /customers -> Updates an existing customer.
	 */
	@RequestMapping(value = "/customers", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<Customer> updateCustomer(HttpServletRequest request,
			@RequestBody Customer customer) throws URISyntaxException,
			Exception {
		log.debug("REST request to update Customer : {}", customer);
		if (customer.getId() == null) {
			return createCustomer(request, customer);
		}
		Customer result = customerRepository.save(customer);
		return ResponseEntity
				.ok()
				.headers(
						HeaderUtil.createEntityUpdateAlert("customer", customer
								.getId().toString())).body(result);
	}

	/**
	 * GET /customers -> get all the customers.
	 */
	@RequestMapping(value = "/customers", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<List<Customer>> getAllCustomers(
			Pageable pageable,
			@RequestParam(value = "changeType", required = false) ChangeCaseType changeType,
			@RequestParam(value = "can", required = false) String can)
			throws URISyntaxException {
		log.debug("REST request to get a page of Customers");
		// Page<Customer> page = customerRepository.findAll(pageable);
		Page<Customer> page;
		if (changeType != null && can==null) {
			page = customerRepository.findByChangeType(pageable, changeType);
		} 
		else if(changeType != null && can!=null){
			page = customerRepository.findByCanAndChangeType(pageable, can, changeType);
		}
		else 
		{
			page = customerRepository.findAll(pageable);
			
		}
		HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(
				page, "/api/customers");
		return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
	}

	/**
	 * GET /customers/:id -> get the "id" customer.
	 */
	@RequestMapping(value = "/customers/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<Customer> getCustomer(@PathVariable Long id) {
		log.debug("REST request to get Customer : {}", id);
		Customer customer = customerRepository.findOne(id);
		return Optional.ofNullable(customer)
				.map(result -> new ResponseEntity<>(result, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}

	/**
	 * DELETE /customers/:id -> delete the "id" customer.
	 */
	@RequestMapping(value = "/customers/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	public ResponseEntity<Void> deleteCustomer(@PathVariable Long id) {
		log.debug("REST request to delete Customer : {}", id);
		customerRepository.delete(id);
		return ResponseEntity
				.ok()
				.headers(
						HeaderUtil.createEntityDeletionAlert("customer",
								id.toString())).build();
	}

	@RequestMapping(value = "/customers/customersApprove", 
			method = RequestMethod.POST, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional(rollbackFor=Exception.class)
	public ResponseEntity<Customer> approveCategoryChange(
			@RequestBody ChangeCaseDTO changeCaseDTO) throws URISyntaxException {
		log.debug("REST request to save Customer : {}", changeCaseDTO);
		Customer customer = changeCaseDTO.getCustomer();
		Customer customerDb = customerRepository.findOne(customer.getId());
		if(ChangeCaseStatus.INITIATED.equals(customerDb.getStatus())){
			customer.setStatus(ChangeCaseStatus.PROCESSING);
		}
		//customer.setStatus(customerDb.getStatus() + 1);
		try {
			workflowService.setRemarks(changeCaseDTO.getRemarks());
			workflowService.getUserDetails();
			workflowService.setApprovedDate(changeCaseDTO.getApprovedDate());
			custDetailsChangeWorkflowService
					.approvedCahangeCaseRequest(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		customerRepository.save(customer);
		
		CustDetails custDetails = custDetailsRepository.findByCanForUpdate(customer.getCan());
		
		if(changeCaseDTO.getReceipt()!=null){
			receiptRepository.save(changeCaseDTO.getReceipt());
		}
		
		if(CPSConstants.UPDATE.equals(workflowService.getMessage())){
			customer.setStatus(ChangeCaseStatus.APPROVED);
		}
		
		/*if(ChangeCaseType.CONNECTIONCATEGORY.equals(customer.getChangeType()) && CPSConstants.UPDATE.equals(workflowService.getMessage())){
			//custDetails.setTariffCategoryMaster(customer.getPresentCategory());
			custDetails.setTariffCategoryMaster(customer.getNewTariffCategory());
		}*/
		
		/*if(ChangeCaseType.PIPESIZE.equals(customer.getChangeType()) && CPSConstants.UPDATE.equals(workflowService.getMessage())){
			custDetails.setPipeSizeMaster(customer.getRequestedPipeSizeMaster());
			custDetails.setPipeSize(customer.getRequestedPipeSizeMaster().getPipeSize());
		}*/
			
		
		if(ChangeCaseType.CHANGENAME.equals(customer.getChangeType()) && CPSConstants.UPDATE.equals(workflowService.getMessage())){
			 if(customer.getMiddleName()!=null){
	            	custDetails.setConsName(customer.getFirstName()+" "+customer.getMiddleName()+" "+customer.getLastName());
	            }
	            else{
	            	custDetails.setConsName(customer.getFirstName()+" "+customer.getLastName());
	            }
			custDetails.setMobileNo(customer.getMobileNo().toString());
			custDetails.setEmail(customer.getNewEmail());//changed
			custDetails.setIdNumber(customer.getIdNumber());
			custDetailsRepository.save(custDetails);
		}
		customerRepository.save(customer);
		

		return ResponseEntity.created(new URI("/api/customersApprove/"))
				.headers(HeaderUtil.createEntityCreationAlert("customer", ""))
				.body(null);
	}
	
	
	 /**
     * Decline the request
     */
    @RequestMapping(value = "/customers/declineRequest",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
	public ResponseEntity<Customer> declineRequests(
			@RequestBody ChangeCaseDTO changeCaseDTO)
			throws Exception {
		log.debug("REST request to declineRequest() for Connection Terminate  : {}", changeCaseDTO);
		
		workflowService.setRemarks(changeCaseDTO.getCustomer().getRemarks());
		workflowService.setApprovedDate(changeCaseDTO.getApprovedDate());
		
		custDetailsChangeWorkflowService.declineRequest(changeCaseDTO.getCustomer().getId());

		changeCaseDTO.getCustomer().setStatus(ChangeCaseStatus.DECLINED);
		customerRepository.save(changeCaseDTO.getCustomer());
		
		return ResponseEntity.created(new URI("/api/customers/declineRequest/"))
				.headers(HeaderUtil.createEntityCreationAlert("customers", ""))
				.body(null);
	}
    
    
    
    /**
     * Get Active can to change its details
     */
    @RequestMapping(value = "/customers/getActiveCan",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional(rollbackFor=Exception.class)
	public ResponseEntity<ChangeCaseDTO> getAtiveCan(
			@RequestBody Customer customer)
			throws Exception {
    	log.debug("REST request to getActiveCan() for Customer  : {}", customer);
		ChangeCaseDTO changeCaseDTO = new ChangeCaseDTO();
    	Customer newCustomer = customerRepository.findByChangeTypeAndCan(customer.getChangeType(), customer.getCan());

    	changeCaseDTO.setCustomer(newCustomer);

    	changeCaseDTO.setCustDetails(custDetailsRepository.findByCanForUpdate(customer.getCan()));

    	return Optional.ofNullable(changeCaseDTO)
				.map(result -> new ResponseEntity<>(changeCaseDTO, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}
    
    
    @RequestMapping(value = "/customers/nameChangeReceipt", 
			method = RequestMethod.POST, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Timed
	@Transactional(rollbackFor=Exception.class)
	public ResponseEntity<Customer> nameChangeReceipt(
			@RequestBody ChangeCaseDTO changeCaseDTO) throws URISyntaxException {
		log.debug("REST request to save Customer : {}", changeCaseDTO);
		Customer customer = changeCaseDTO.getCustomer();
		Customer customerDb = customerRepository.findOne(customer.getId());
		try {
			workflowService.setRemarks(changeCaseDTO.getRemarks());
			workflowService.getUserDetails();
			workflowService.setApprovedDate(changeCaseDTO.getApprovedDate());
			custDetailsChangeWorkflowService
					.approvedCahangeCaseRequest(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(ChangeCaseStatus.PROCESSING.equals(customerDb.getStatus())){
			customer.setStatus(ChangeCaseStatus.PAYMENTNC);
		}
		
		if(changeCaseDTO.getReceipt()!=null){
			receiptRepository.save(changeCaseDTO.getReceipt());
		}
		
		
		customerRepository.save(customer);
		//custDetailsRepository.save(custDetails); not to save in custDetails

		return ResponseEntity.created(new URI("/api/nameChangeReceipt/"))
				.headers(HeaderUtil.createEntityCreationAlert("customer", ""))
				.body(null);
	}
    
    
    /**
     * Get Customer Change Cases by requestedDate
     */
    @RequestMapping(value = "/customers/getByRequestedDate",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
	public ResponseEntity<List<Customer>> getByRequestedDate(@Param("requestedDate") ZonedDateTime requestedDate, @Param("changeCaseType") ChangeCaseType changeCaseType)
			throws Exception {
    	log.debug("REST request to Customer Change Cases by requestedDate : {}");
    	
    	List<Customer> customers = customerRepository.findByRequestedDateAndChangeTypeOrderByIdDesc(requestedDate.toLocalDate(), changeCaseType);
    	
    	return Optional.ofNullable(customers)
				.map(result -> new ResponseEntity<>(customers, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.OK));
	}
    
    
    /**
     * Get Customer Change Cases by Can and change type
     */
    @RequestMapping(value = "/customers/getByCanAndChangeType",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
	public ResponseEntity<List<Customer>> getByCanAndChangeTyoe(@Param("can") String can, @Param("changeCaseType") ChangeCaseType changeCaseType)
			throws Exception {
    	log.debug("REST request to Customer Change Cases by requestedDate : {}");
    	
    	List<Customer> customers = customerRepository.findByCanAndChangeTypeOrderByIdDesc(can, changeCaseType);
    	
    	return Optional.ofNullable(customers)
				.map(result -> new ResponseEntity<>(customers, HttpStatus.OK))
				.orElse(new ResponseEntity<>(HttpStatus.OK));
	}
}


