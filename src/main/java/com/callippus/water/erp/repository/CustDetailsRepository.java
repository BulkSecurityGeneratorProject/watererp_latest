package com.callippus.water.erp.repository;

import java.util.List;

import javax.persistence.LockModeType;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Lock;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.callippus.water.erp.domain.CustDetails;
import com.callippus.water.erp.domain.DivisionMaster;
import com.callippus.water.erp.domain.TariffCategoryMaster;

/**
 * Spring Data JPA repository for the CustDetails entity.
 */
public interface CustDetailsRepository extends JpaRepository<CustDetails,Long> {
	
	public CustDetails findByCan(String can);
	
	@Lock(LockModeType.PESSIMISTIC_WRITE)
	@Query("select c from CustDetails c where c.can = :can")
	public CustDetails findByCanForUpdate(@Param("can") String can);
	
	
	@Query("select max(SUBSTRING(can, 5, 8))  "
			+ "from CustDetails at where SUBSTRING(can, 1,2)=:division and SUBSTRING(can, 3,2)=:street")
	Integer findByCan(@Param("division")String division, @Param("street")String street); 
	
	@Query("select c from CustDetails c where c.status='DEACTIVE'")
	public List<CustDetails> findNewTerminations();
	
	public List<CustDetails> findByPrevBillType(String prevBillType);
	
	public Page<CustDetails> findByTariffCategoryMaster(Pageable pageable, TariffCategoryMaster tariffCategoryMaster);
	
	public Long countByDivisionMaster(DivisionMaster divisionMaster);
	public List<CustDetails> findByDivisionMaster(DivisionMaster divisionMaster);
	
	//public List<CustDetails> findByTariffCategoryMaster(TariffCategoryMaster tariffCategoryMaster);
	public Integer countByTariffCategoryMasterAndDivisionMaster(TariffCategoryMaster tariffCategoryMaster, DivisionMaster divisionMaster);
}
