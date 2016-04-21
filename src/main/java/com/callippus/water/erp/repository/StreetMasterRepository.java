package com.callippus.water.erp.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.callippus.water.erp.domain.DivisionMaster;
import com.callippus.water.erp.domain.StreetMaster;

/**
 * Spring Data JPA repository for the StreetMaster entity.
 */
public interface StreetMasterRepository extends JpaRepository<StreetMaster,Long> {
	
	Page<StreetMaster>findByDivisionMaster(Pageable pageable, DivisionMaster divisionId);

}
