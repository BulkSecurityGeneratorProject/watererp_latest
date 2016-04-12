package com.callippus.water.erp.repository;

import com.callippus.water.erp.domain.BillRunDetails;

import org.springframework.data.jpa.repository.*;

import java.util.List;

/**
 * Spring Data JPA repository for the BillRunDetails entity.
 */
public interface BillRunDetailsRepository extends JpaRepository<BillRunDetails,Long> {

}
