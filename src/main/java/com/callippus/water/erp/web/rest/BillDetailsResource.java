package com.callippus.water.erp.web.rest;

import com.codahale.metrics.annotation.Timed;
import com.callippus.water.erp.domain.BillDetails;
import com.callippus.water.erp.repository.BillDetailsRepository;
import com.callippus.water.erp.web.rest.util.HeaderUtil;
import com.callippus.water.erp.web.rest.util.PaginationUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.validation.Valid;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

/**
 * REST controller for managing BillDetails.
 */
@RestController
@RequestMapping("/api")
public class BillDetailsResource {

    private final Logger log = LoggerFactory.getLogger(BillDetailsResource.class);
        
    @Inject
    private BillDetailsRepository billDetailsRepository;
    
    /**
     * POST  /billDetailss -> Create a new billDetails.
     */
    @RequestMapping(value = "/billDetailss",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillDetails> createBillDetails(@Valid @RequestBody BillDetails billDetails) throws URISyntaxException {
        log.debug("REST request to save BillDetails : {}", billDetails);
        if (billDetails.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("billDetails", "idexists", "A new billDetails cannot already have an ID")).body(null);
        }
        BillDetails result = billDetailsRepository.save(billDetails);
        return ResponseEntity.created(new URI("/api/billDetailss/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("billDetails", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /billDetailss -> Updates an existing billDetails.
     */
    @RequestMapping(value = "/billDetailss",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillDetails> updateBillDetails(@Valid @RequestBody BillDetails billDetails) throws URISyntaxException {
        log.debug("REST request to update BillDetails : {}", billDetails);
        if (billDetails.getId() == null) {
            return createBillDetails(billDetails);
        }
        BillDetails result = billDetailsRepository.save(billDetails);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("billDetails", billDetails.getId().toString()))
            .body(result);
    }

    /**
     * GET  /billDetailss -> get all the billDetailss.
     */
    @RequestMapping(value = "/billDetailss",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<BillDetails>> getAllBillDetailss(Pageable pageable)
        throws URISyntaxException {
        log.debug("REST request to get a page of BillDetailss");
        Page<BillDetails> page = billDetailsRepository.findAll(pageable); 
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/billDetailss");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /billDetailss/:id -> get the "id" billDetails.
     */
    @RequestMapping(value = "/billDetailss/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<BillDetails> getBillDetails(@PathVariable Long id) {
        log.debug("REST request to get BillDetails : {}", id);
        BillDetails billDetails = billDetailsRepository.findOne(id);
        return Optional.ofNullable(billDetails)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /billDetailss/:id -> delete the "id" billDetails.
     */
    @RequestMapping(value = "/billDetailss/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteBillDetails(@PathVariable Long id) {
        log.debug("REST request to delete BillDetails : {}", id);
        billDetailsRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("billDetails", id.toString())).build();
    }
}
