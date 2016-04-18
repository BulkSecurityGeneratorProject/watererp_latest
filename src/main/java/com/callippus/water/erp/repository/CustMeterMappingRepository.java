package com.callippus.water.erp.repository;

import com.callippus.water.erp.domain.CustMeterMapping;

import org.springframework.data.jpa.repository.*;

import java.util.List;

/**
 * Spring Data JPA repository for the CustMeterMapping entity.
 */
public interface CustMeterMappingRepository extends JpaRepository<CustMeterMapping,Long> {

    @Query("select custMeterMapping from CustMeterMapping custMeterMapping where custMeterMapping.user.login = ?#{principal.username}")
    List<CustMeterMapping> findByUserIsCurrentUser();

}
