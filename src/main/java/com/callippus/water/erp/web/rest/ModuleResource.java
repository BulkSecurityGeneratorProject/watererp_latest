package com.callippus.water.erp.web.rest;

import com.codahale.metrics.annotation.Timed;
import com.callippus.water.erp.domain.Module;
import com.callippus.water.erp.repository.ModuleRepository;
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
 * REST controller for managing Module.
 */
@RestController
@RequestMapping("/api")
public class ModuleResource {

    private final Logger log = LoggerFactory.getLogger(ModuleResource.class);
        
    @Inject
    private ModuleRepository moduleRepository;
    
    /**
     * POST  /modules -> Create a new module.
     */
    @RequestMapping(value = "/modules",
        method = RequestMethod.POST,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Module> createModule(@Valid @RequestBody Module module) throws URISyntaxException {
        log.debug("REST request to save Module : {}", module);
        if (module.getId() != null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createFailureAlert("module", "idexists", "A new module cannot already have an ID")).body(null);
        }
        Module result = moduleRepository.save(module);
        return ResponseEntity.created(new URI("/api/modules/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert("module", result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /modules -> Updates an existing module.
     */
    @RequestMapping(value = "/modules",
        method = RequestMethod.PUT,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Module> updateModule(@Valid @RequestBody Module module) throws URISyntaxException {
        log.debug("REST request to update Module : {}", module);
        if (module.getId() == null) {
            return createModule(module);
        }
        Module result = moduleRepository.save(module);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert("module", module.getId().toString()))
            .body(result);
    }

    /**
     * GET  /modules -> get all the modules.
     */
    @RequestMapping(value = "/modules",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<List<Module>> getAllModules(Pageable pageable)
        throws URISyntaxException {
        log.debug("REST request to get a page of Modules");
        Page<Module> page = moduleRepository.findAll(pageable); 
        HttpHeaders headers = PaginationUtil.generatePaginationHttpHeaders(page, "/api/modules");
        return new ResponseEntity<>(page.getContent(), headers, HttpStatus.OK);
    }

    /**
     * GET  /modules/:id -> get the "id" module.
     */
    @RequestMapping(value = "/modules/{id}",
        method = RequestMethod.GET,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Module> getModule(@PathVariable Long id) {
        log.debug("REST request to get Module : {}", id);
        Module module = moduleRepository.findOne(id);
        return Optional.ofNullable(module)
            .map(result -> new ResponseEntity<>(
                result,
                HttpStatus.OK))
            .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    /**
     * DELETE  /modules/:id -> delete the "id" module.
     */
    @RequestMapping(value = "/modules/{id}",
        method = RequestMethod.DELETE,
        produces = MediaType.APPLICATION_JSON_VALUE)
    @Timed
    public ResponseEntity<Void> deleteModule(@PathVariable Long id) {
        log.debug("REST request to delete Module : {}", id);
        moduleRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert("module", id.toString())).build();
    }
}
