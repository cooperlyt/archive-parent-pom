package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Business;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusinessRepo extends CrudRepository<Business,String> {

    Business findBusinessById(String id);


}
