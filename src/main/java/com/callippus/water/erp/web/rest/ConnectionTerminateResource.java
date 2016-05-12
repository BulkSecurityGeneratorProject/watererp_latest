package com.callippus.water.erp.web.rest;

import com.codahale.metrics.annotation.Timed;
import com.callippus.water.erp.domain.ConnectionTerminate;
import com.callippus.water.erp.repository.ConnectionTerminateRepository;
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
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

/**
 * REST controller for managing ConnectionTerminate.
 */
@RestController
@RequestMapping("/api")
public class ConnectionTerminateResource {

    private final Logger log = LoggerFactory.getLogger(ConnectionTerminateResource.class);
        
    @Inject
    private ConnectionTerminateRepository connectionTerminateRepository;
    
    /**
     * POST  /connectionTerminates -> Create a new connectionTerminate.
     */
    @RequestMapping(value = "/connectionTerminates",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<ConnectionTerminate> createConnectionTerminate(@RequestBody ConnectionTerminate connectionTerminate) throws URISyntaxException {
        log.debug("REST request to save ConnectionTerminate : {}", connectionTerminate);
        if (connectionTerminate.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("connectionTerminate", "idexists", "A new connectionTerminate cannot already have an ID")).body(null);
        }
        ConnectionTerminate result = connectionTerminateRepository.save(connectionTerminate);
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
}