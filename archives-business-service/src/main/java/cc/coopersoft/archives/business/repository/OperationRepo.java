package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Operation;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OperationRepo extends CrudRepository<Operation,Long> {

    List<Operation> queryAllByBusinessIdOrderByOperationTimeDesc(String businessId);
}
