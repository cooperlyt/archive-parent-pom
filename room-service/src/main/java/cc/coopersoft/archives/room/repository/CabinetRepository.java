package cc.coopersoft.archives.room.repository;

import cc.coopersoft.archives.room.model.Cabinet;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CabinetRepository extends CrudRepository<Cabinet,String> {

    @Query("select c from Cabinet c where c.rack.id = :rackId order by c.seq")
    List<Cabinet> listCabinetByRack(@Param("rackId")String rackId);
}
