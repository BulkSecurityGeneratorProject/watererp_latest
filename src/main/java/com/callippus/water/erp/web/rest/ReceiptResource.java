package com.callippus.water.erp.web.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.callippus.water.erp.domain.ApplicationTxn;
import com.callippus.water.erp.domain.Receipt;
import com.callippus.water.erp.repository.ApplicationTxnRepository;
import com.callippus.water.erp.repository.ReceiptRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.workflow.applicationtxn.service.ApplicationTxnWorkflowService;
import com.callippus.water.erp.workflow.service.WorkflowService;
import com.codahale.metrics.annotation.Timed;

/**
 * REST controller for managing Receipt.
 */
@RestController
@RequestMapping("/api")
public class ReceiptResource {

    private final Logger log = LoggerFactory.getLogger(ReceiptResource.class);
        
    @Inject
    private ReceiptRepository receiptRepository;
    
    @Inject
    private ApplicationTxnRepository applicationTxnRepository;
    
    @Inject
    private ApplicationTxnWorkflowService applicationTxnWorkflowService;
    
    @Inject WorkflowService workflowService;
    
    /**
     * POST  /receipts -> Create a new receipt.
     */
    @RequestMapping(value = "/receipts",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    @Transactional
    public ResponseEntity<Receipt> createReceipt(@RequestBody Receipt receipt) throws URISyntaxException {
        log.debug("REST request to save Receipt : {}", receipt);
        if (receipt.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("receipt", "idexists", "A new receipt cannot already have an ID")).body(null);
        }
        Receipt result = receiptRepository.save(receipt);
        ApplicationTxn applicationTxn = applicationTxnRepository.findOne(receipt.getApplicationTxn().getId());
        if(receipt.getCan()!=null){
        	applicationTxn.setCan(receipt.getApplicationTxn().getCan());
        }
        applicationTxn.setRemarks(receipt.getApplicationTxn().getRemarks());
        applicationTxnRepository.save(applicationTxn);
        try{
        	workflowService.setApprovedDate(ZonedDateTime.now());
        	applicationTxnWorkflowService.approveRequest(applicationTxn.getId(), applicationTxn.getRemarks());
        }
        catch(Exception e){
        	e.printStackTrace();
        }
        return ResponseEntity.created(new URI("/api/receipts/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("receipt", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /receipts -> Updates an existing receipt.
     */
    @RequestMapping(value = "/receipts",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Receipt> updateReceipt(@RequestBody Receipt receipt) throws URISyntaxException {
        log.debug("REST request to update Receipt : {}", receipt);
        if (receipt.getId() == null) {
            return createReceipt(receipt);
        }
        Receipt result = receiptRepository.save(receipt);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("receipt", receipt.getId().toString()))
            .body(result);
    }

    /**
     * GET  /receipts -> get all the receipts.
     */
    @RequestMapping(value = "/receipts",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public List<Receipt> getAllReceipts() {
        log.debug("REST request to get all Receipts");
        return receiptRepository.findAll();
            }

    /**
     * GET  /receipts/:id -> get the "id" receipt.
     */
    @RequestMapping(value = "/receipts/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Receipt> getReceipt(@PathVariable Long id) {
        log.debug("REST request to get Receipt : {}", id);
        Receipt receipt = receiptRepository.findOne(id);
        return Optional.ofNullable(receipt)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /receipts/:id -> delete the "id" receipt.
     */
    @RequestMapping(value = "/receipts/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteReceipt(@PathVariable Long id) {
        log.debug("REST request to delete Receipt : {}", id);
        receiptRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("receipt", id.toString())).build();
    }
}
