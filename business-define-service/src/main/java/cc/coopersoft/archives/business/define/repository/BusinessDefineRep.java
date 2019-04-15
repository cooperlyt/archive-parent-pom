package cc.coopersoft.archives.business.define.repository;

import cc.coopersoft.archives.business.define.model.BusinessDefine;
import cc.coopersoft.archives.business.define.model.BusinessDefineSummary;
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

    @Query("SELECT distinct new cc.coopersoft.archives.business.define.model.BusinessDefineSummary(b.id,b.name,c.name,b.priority,c.priority) from BusinessDefine b left join b.createRoles r left join b.businessCategory c where r.role in ( :roles ) order by b.businessCategory.priority, b.priority")
    List<BusinessDefineSummary> listDefineSummaryByRole(@Param("roles") Collection<String> roles);
}
