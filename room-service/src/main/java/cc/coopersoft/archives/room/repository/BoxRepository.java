package cc.coopersoft.archives.room.repository;

import cc.coopersoft.archives.room.model.Box;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BoxRepository extends CrudRepository<Box,String> {

    @Query("select b from Box b where b.cell.id = :cellId order by b.seq")
    List<Box> listBoxByCell(@Param("cellId") String cellId);

    @Query("SELECT max(b.seq) FROM Box b where b.cell.id = :cellId ")
    Long maxSeq(@Param("cellId")String cellId);
}
