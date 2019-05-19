package cc.coopersoft.construct.corp.repository;

import cc.coopersoft.construct.corp.model.ConstructCorp;
import cc.coopersoft.construct.corp.model.CorpSummary;
import cc.coopersoft.construct.data.CorpStatus;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface ConstructCorpRep extends CrudRepository<ConstructCorp, String> {

    List<ConstructCorp> findAllByTypeEqualsAndStatusInOrderByRegDate(CorpType type, Collection<CorpStatus> statuses);

    @Query("SELECT new cc.coopersoft.construct.corp.model.CorpSummary(cc.id,c.name,c.description) FROM ConstructCorp cc left join cc.corp c where cc.type = :type and cc.status in (:status) order by cc.regDate desc")
    List<CorpSummary> listCorpSummary(@Param("type") CorpType type,@Param("status") Collection<CorpStatus> statuses);



}
