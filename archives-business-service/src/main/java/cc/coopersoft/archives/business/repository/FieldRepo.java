package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.BusinessField;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FieldRepo extends CrudRepository<BusinessField,String> {

    List<BusinessField> queryAllByBusinessIdOrderByRow(String id);

    void deleteAllByBusinessId(String businessId);
}
