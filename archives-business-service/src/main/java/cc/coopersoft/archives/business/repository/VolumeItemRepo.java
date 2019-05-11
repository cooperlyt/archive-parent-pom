package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.VolumeItem;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface VolumeItemRepo extends CrudRepository<VolumeItem,Integer> {

    List<VolumeItem> queryAllByBusinessIdOrderBySeqAsc(String businessId);

    void deleteAllByBusinessId(String id);
}


