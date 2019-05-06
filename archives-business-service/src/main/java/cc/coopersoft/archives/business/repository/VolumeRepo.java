package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Volume;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VolumeRepo extends CrudRepository<Volume,String> {

    void deleteAllByBusinessId(String businessId);
}
