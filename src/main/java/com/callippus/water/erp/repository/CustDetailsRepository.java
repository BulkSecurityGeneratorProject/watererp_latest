package com.callippus.water.erp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.callippus.water.erp.domain.CustDetails;

/**
 * Spring Data JPA repository for the CustDetails entity.
 */
public interface CustDetailsRepository extends JpaRepository<CustDetails,Long> {
	public CustDetails findByCan(String can);
	
	
	@Query("select max(SUBSTRING(can, 5, 8))  "
			+ "from CustDetails at where SUBSTRING(can, 1,2)=:division and SUBSTRING(can, 3,2)=:street")
	Integer findByCan(@Param("division")String division, @Param("street")String street); 
	

}
