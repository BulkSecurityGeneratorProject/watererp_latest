package com.callippus.water.erp.repository;

import com.callippus.water.erp.domain.SchemeMaster;

import org.springframework.data.jpa.repository.*;

import java.util.List;

/**
 * Spring Data JPA repository for the SchemeMaster entity.
 */
public interface SchemeMasterRepository extends JpaRepository<SchemeMaster,Long> {

}
