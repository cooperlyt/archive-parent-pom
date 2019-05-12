package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.UsedDefine;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface BusinessRepo extends CrudRepository<Business,String> {

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    Business findBusinessById(String id);

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    List<Business> queryTop10ByStatusInOrderByChangeTimeDesc(Collection<Business.Status> statuses);

    @Query("SELECT max(b.seq) from Business b")
    Integer maxSeq();

    @Query("SELECT new cc.coopersoft.archives.business.model.UsedDefine(b.defineId,b.defineName, count(b) ) FROM Business b  group by b.defineId,b.defineName order by b.defineId")
    List<UsedDefine> listUsedDefine();

    @Query("SELECT new cc.coopersoft.archives.business.model.UsedDefine(b.defineId,b.defineName, count(b) ) FROM Business b where b.deliverId=:orgId  group by b.defineId,b.defineName order by b.defineId")
    List<UsedDefine> listUsedDefineByOrg(@Param("orgId")String orgId);

    List<Business> findBusinessesByVolumeBoxIdOrderByVolumeRecordTime(String id);


}
