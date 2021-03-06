package com.callippus.water.erp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.callippus.water.erp.domain.EmpRoleMapping;
import com.callippus.water.erp.domain.StatusMaster;
import com.callippus.water.erp.domain.User;

/**
 * Spring Data JPA repository for the EmpRoleMapping entity.
 */
public interface EmpRoleMappingRepository extends JpaRepository<EmpRoleMapping,Long> {

    @Query("select empRoleMapping from EmpRoleMapping empRoleMapping where empRoleMapping.user.login = ?#{principal.username}")
    List<EmpRoleMapping> findByUserIsCurrentUser();

    @Query("select empRoleMapping from EmpRoleMapping empRoleMapping where empRoleMapping.parentUser.login = ?#{principal.username}")
    List<EmpRoleMapping> findByParentUserIsCurrentUser();
    
    @Query("Select erm from EmpRoleMapping erm where erm.statusMaster.id=:statusMasterId and erm.orgRoleInstance.id=:orgRoleInstanceId")
    EmpRoleMapping findByStatusMasterAndOrgRoleInstance( @Param("statusMasterId")Long statusMasterId, @Param("orgRoleInstanceId")Long orgRoleInstanceId);

    EmpRoleMapping findByUser(User user);
    
    List<EmpRoleMapping> findByUserAndStatusMaster(User user, StatusMaster statusMaster);
    
    
    @Query("select empRoleMapping from EmpRoleMapping empRoleMapping where empRoleMapping.statusMaster.id=2 and empRoleMapping.user.login = ?#{principal.username}")
    EmpRoleMapping findByStatusMasterAndUser();
    
    @Query("select empRoleMapping from EmpRoleMapping empRoleMapping where statusMaster.id=2 and empRoleMapping.user.login = ?#{principal.username}")
    List<EmpRoleMapping> findUser();
}
