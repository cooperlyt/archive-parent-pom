package cc.coopersoft.archives.room.repository;

import cc.coopersoft.archives.room.model.Room;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomRepository extends CrudRepository<Room,String> {

}
