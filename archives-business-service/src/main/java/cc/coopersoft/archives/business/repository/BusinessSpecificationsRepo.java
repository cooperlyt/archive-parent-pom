package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Business;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface BusinessSpecificationsRepo extends JpaRepository<Business,String> , JpaSpecificationExecutor<Business> {
}
