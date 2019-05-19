package cc.coopersoft.construct.corp.repository;

import cc.coopersoft.construct.corp.model.Corp;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CorpRepo extends CrudRepository<Corp,String> {

    @Query("SELECT c FROM Corp c left join c.constructCorps cc where cc.type = :type and c.enable = true order by c.dataTime desc ")
    List<Corp> listValidCorpByType(@Param("type") CorpType type);

    List<Corp> queryAllByEnableTrueOrderByDataTimeDesc();
}
