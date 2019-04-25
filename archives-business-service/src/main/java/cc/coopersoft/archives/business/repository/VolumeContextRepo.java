package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.VolumeContext;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VolumeContextRepo extends CrudRepository<VolumeContext,String> {
}
