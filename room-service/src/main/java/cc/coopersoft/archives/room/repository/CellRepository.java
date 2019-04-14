package cc.coopersoft.archives.room.repository;

import cc.coopersoft.archives.room.model.Cell;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CellRepository extends CrudRepository<Cell,String> {

    @Query("select c from Cell c where c.cabinet.id = :cabinetId order by c.id")
    List<Cell> listCellByCabinet(@Param("cabinetId") String cabinetId);
}
