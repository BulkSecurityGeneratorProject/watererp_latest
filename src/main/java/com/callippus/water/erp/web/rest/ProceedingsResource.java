package com.callippus.water.erp.web.rest;

import com.codahale.metrics.annotation.Timed;
import com.callippus.water.erp.domain.Proceedings;
import com.callippus.water.erp.repository.ProceedingsRepository;
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
 * REST controller for managing Proceedings.
 */
@RestController
@RequestMapping("/api")
public class ProceedingsResource {

    private final Logger log = LoggerFactory.getLogger(ProceedingsResource.class);
        
    @Inject
    private ProceedingsRepository proceedingsRepository;
    
    /**
     * POST  /proceedingss -> Create a new proceedings.
     */
    @RequestMapping(value = "/proceedingss",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Proceedings> createProceedings(@Valid @RequestBody Proceedings proceedings) throws URISyntaxException {
        log.debug("REST request to save Proceedings : {}", proceedings);
        if (proceedings.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("proceedings", "idexists", "A new proceedings cannot already have an ID")).body(null);
        }
        Proceedings result = proceedingsRepository.save(proceedings);
        return ResponseEntity.created(new URI("/api/proceedingss/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("proceedings", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /proceedingss -> Updates an existing proceedings.
     */
    @RequestMapping(value = "/proceedingss",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Proceedings> updateProceedings(@Valid @RequestBody Proceedings proceedings) throws URISyntaxException {
        log.debug("REST request to update Proceedings : {}", proceedings);
        if (proceedings.getId() == null) {
            return createProceedings(proceedings);
        }
        Proceedings result = proceedingsRepository.save(proceedings);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("proceedings", proceedings.getId().toString()))
            .body(result);
    }

    /**
     * GET  /proceedingss -> get all the proceedingss.
     */
    @RequestMapping(value = "/proceedingss",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<Proceedings>> getAllProceedingss(Pageable pageable)
        throws URISyntaxException {
        log.debug("REST request to get a page of Proceedingss");
        Page<Proceedings> page = proceedingsRepository.findAll(pageable); 
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/proceedingss");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /proceedingss/:id -> get the "id" proceedings.
     */
    @RequestMapping(value = "/proceedingss/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Proceedings> getProceedings(@PathVariable Long id) {
        log.debug("REST request to get Proceedings : {}", id);
        Proceedings proceedings = proceedingsRepository.findOne(id);
        return Optional.ofNullable(proceedings)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /proceedingss/:id -> delete the "id" proceedings.
     */
    @RequestMapping(value = "/proceedingss/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteProceedings(@PathVariable Long id) {
        log.debug("REST request to delete Proceedings : {}", id);
        proceedingsRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("proceedings", id.toString())).build();
    }
}