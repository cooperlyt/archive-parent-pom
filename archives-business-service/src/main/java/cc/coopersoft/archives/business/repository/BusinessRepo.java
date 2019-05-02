package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Business;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface BusinessRepo extends CrudRepository<Business,String> {

    Business findBusinessById(String id);


    List<Business> queryTop10ByStatusInOrderByChangeTimeDesc(Collection<Business.Status> statuses);

    @Query("SELECT max(b.seq) from Business b")
    Integer maxSeq();


}
