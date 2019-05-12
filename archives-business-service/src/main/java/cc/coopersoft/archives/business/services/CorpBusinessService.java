package cc.coopersoft.archives.business.services;


import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.Operation;
import cc.coopersoft.archives.business.model.UsedDefine;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import cc.coopersoft.archives.business.repository.BusinessSearchRepo;
import cc.coopersoft.archives.business.repository.BusinessSpecificationsRepo;
import cc.coopersoft.construct.data.UserToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.*;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

@Service
@PreAuthorize("hasRole('CORP')")
public class CorpBusinessService {
    @Autowired
    private BusinessRepo businessRepo;


    @Autowired
    private BusinessSpecificationsRepo businessSpecificationsRepo;

    @Autowired
    private BusinessService businessService;

    public Business saveBusiness(UserToken user, Business business){
        if (business.getId() == null){
            business.setStatus(Business.Status.PREPARE);
        }
        business.setDeliverId(user.getOrgId());
        business.setDeliver(user.getOrgName());

        return businessService.saveBusiness(business,user.getUserName());
    }

    public Business submitBusiness(UserToken user, String id, String explain){
        Optional<Business> business = businessRepo.findById(id);
        if (!business.isPresent()){
            return null;
        }
        business.get().setStatus(Business.Status.RUNNING);
        Operation operation = new Operation(Operation.Type.COMMIT,
                user.getUserId(),user.getUserName(),business.get(),
                explain );
        business.get().getOperations().add(operation);
        return businessRepo.save(business.get());

    }

    public List<UsedDefine> listUsedDefined(String orgId){
        return  businessRepo.listUsedDefineByOrg(orgId);
    }


    public Page<Business> searchBusiness(String orgId, Optional<String> key, Optional<String> define, Pageable pageable){
    // findAllByIdOrKeyContainingOrDeliverContainingOrDeliverId

        Specification<Business> specification  = (Specification<Business>) (root, criteriaQuery, cb) -> {
            Path<String> idPath = root.get("id");
            Path<String> keyPath = root.get("key");
            Path<String> deliverIdPath = root.get("deliverId");
            Path<String> projectNamePath = root.get("projectName");
            Path<String> projectIdPath = root.get("projectId");
            Path<String> definePath = root.get("defineId");

            List<Predicate> predicates = new LinkedList<>();
            predicates.add(cb.equal(deliverIdPath,orgId));

            if (define.isPresent()){
                predicates.add(cb.equal(definePath,define.get()));
            }


            if (key.isPresent()){

                predicates.add(cb.or(
                        cb.like(projectNamePath , "%" + key.get() + "%" ),
                        cb.like(keyPath,"%" +  key.get() + "%"),
                        cb.equal(projectIdPath,key.get()),
                        cb.equal(idPath,key.get()))
                    );

            }

            root.fetch("volume",JoinType.LEFT);

            return cb.and(predicates.toArray(new Predicate[predicates.size()]));
        };

        return businessSpecificationsRepo.findAll(specification,pageable);
    }
}
