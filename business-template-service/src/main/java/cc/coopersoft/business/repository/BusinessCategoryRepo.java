package cc.coopersoft.business.repository;

import cc.coopersoft.business.model.BusinessCategory;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BusinessCategoryRepo extends CrudRepository<BusinessCategory,String> {

    List<BusinessCategory> findAllByOrderByPriority();
}
