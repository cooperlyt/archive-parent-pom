package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.VolumeContext;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VolumeContextRepo extends CrudRepository<VolumeContext,String> {

    List<VolumeContext> queryAllByItemIdOrderByOrdinal(int id);

    void deleteAllByItemBusinessId(String id);

    void deleteAllByItemId(int id);

}
