package cc.coopersoft.archives.business.repository;

import cc.coopersoft.archives.business.model.Business;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface BusinessSearchRepo extends PagingAndSortingRepository<Business,String> {

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    Page<Business> findAllByIdOrKeyContainingOrDeliverContainingOrDeliverId(String id, String key, String deliver, String deliverId , Pageable pageable);

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    Page<Business> findAllByDefineIdAndIdOrDefineIdAndKeyContainingOrDefineIdAndDeliverContainingOrDefineIdAndDeliverId(String define1 ,String id,String define2, String key,String define3, String deliver, String define4, String deliverId , Pageable pageable );

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    Page<Business> findAllByDefineId(String define, Pageable pageable);

    @EntityGraph(value = "Business.volume",type = EntityGraph.EntityGraphType.FETCH)
    Page<Business> findAll(Pageable pageable);
}
