package cc.coopersoft.business.repository;

import cc.coopersoft.business.model.BusinessDefine;
import cc.coopersoft.business.model.BusinessDefineSummary;
import cc.coopersoft.business.model.DefaultRecord;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;
import java.util.Set;

@Repository
public interface BusinessDefineRep extends CrudRepository<BusinessDefine,String> {

    @Query("SELECT distinct b from BusinessDefine b left join b.createRoles r where r.role in (:roles)")
    Set<BusinessDefine> listDefineByRole(@Param("roles") Collection<String> roles);

    @Query("SELECT distinct new cc.coopersoft.business.model.BusinessDefineSummary(b.id,b.name,c.name,b.memo) from BusinessDefine b left join b.createRoles r left join b.businessCategory c where r.role in ( :roles ) order by b.businessCategory.priority, b.priority")
    List<BusinessDefineSummary> listDefineSummaryByRole(@Param("roles") Collection<String> roles);

    @Query("SELECT distinct new cc.coopersoft.business.model.BusinessDefineSummary(b.id,b.name,c.name,b.memo) from BusinessDefine b left join b.createRoles r left join b.businessCategory c order by b.businessCategory.priority, b.priority")
    List<BusinessDefineSummary> listDefineSummary();

    @Query("select new cc.coopersoft.business.model.DefaultRecord(b.id,b.defaultRoom,b.defaultRack,b.defaultSecrecyLen,b.defaultSecrecyLevel) from BusinessDefine b where b.id = :defineId")
    DefaultRecord getDefaultRecord(@Param("defineId")String id);

    @Query("SELECT distinct new cc.coopersoft.business.model.BusinessDefineSummary(b.id,b.name,c.name,b.memo) from BusinessDefine b left join b.businessCategory c  where c.id = :categoryId order by b.priority")
    List<BusinessDefineSummary> listDefineSummaryByCategory(@Param("categoryId")String categoryId);

    

    BusinessDefine getBusinessDefineById(String id);
}
