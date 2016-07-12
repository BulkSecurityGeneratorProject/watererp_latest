package com.callippus.water.erp.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.callippus.water.erp.domain.BillFullDetails;

/**.
 * Spring Data JPA repository for the BillFullDetails entity.
 */
public interface BillFullDetailsRepository extends JpaRepository<BillFullDetails,Long> {
	public BillFullDetails findByCanAndBillDate(String can, LocalDate billDate);
	
	public Page<BillFullDetails> findByCan(Pageable pageable, String can);
	
	@Query("select brd.billFullDetails from BillRunDetails brd where brd.status=4 and brd.can=:can and brd.billFullDetails.dueAmount > 0 order by brd.id")
	public List<BillFullDetails> findBillsDue(@Param("can") String can);
	
}
