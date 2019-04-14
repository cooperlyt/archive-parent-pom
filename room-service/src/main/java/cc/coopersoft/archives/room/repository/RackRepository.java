package cc.coopersoft.archives.room.repository;

import cc.coopersoft.archives.room.model.Rack;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RackRepository extends CrudRepository<Rack,String> {

    @Query("select r from Rack r where r.room.id = :roomId order by r.id")
    List<Rack> listRackByRoom(@Param("roomId") String roomId);
}
