package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.repository.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Transient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@PreAuthorize("hasRole('GOV')")
public class GovBusinessService {

    private static final Logger logger = LoggerFactory.getLogger(GovBusinessService.class);

    @Autowired
    private BusinessRepo businessRepo;

    @Autowired
    private VolumeContextRepo volumeContextRepo;

    @Autowired
    private FieldRepo fieldRepo;

    @Autowired
    private OperationRepo operationRepo;

    @Autowired
    private VolumeRepo volumeRepo;

    @Autowired
    private BusinessSearchRepo businessSearchRepo;

    @Autowired
    private VolumeItemRepo volumeItemRepo;

    @Autowired
    private BusinessService businessService;

    @Autowired
    private BusinessSpecificationsRepo businessSpecificationsRepo;

    public Business rejectBusiness(String userName, String id, String explain){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        for(GrantedAuthority auth: authentication.getAuthorities()) {
            logger.debug("user roles:" + auth.getAuthority());
        }
        Optional<Business> business = businessRepo.findById(id);
        if (!business.isPresent()){
            return null;
        }
        business.get().setStatus(Business.Status.REJECT);
        Operation operation = new Operation(Operation.Type.REJECT,
                authentication.getPrincipal().toString(),userName,business.get(),
                explain );
        business.get().getOperations().add(operation);
        return businessRepo.save(business.get());
    }

    public List<Business> listBusinessByBoxId(String boxId){
        return businessRepo.findBusinessesByVolumeBoxIdOrderByVolumeRecordTime(boxId);
    }

    public List<VolumeContext> listContent(int itemId){
        return volumeContextRepo.queryAllByItemIdOrderByOrdinal(itemId);
    }

    public List<VolumeItem> listVolumeItem(String businessId){
        return volumeItemRepo.queryAllByBusinessIdOrderBySeqAsc(businessId);
    }

    public VolumeItem getVolumeItem(int id){
        Optional<VolumeItem> item = volumeItemRepo.findById(id);
        if (item.isPresent()){
            return item.get();
        }
        return null;
    }

    public void deleteVolumeContext(String contextId){
        volumeContextRepo.deleteById(contextId);
    }

    public void clearVolumeContext(int itemId){
        volumeContextRepo.deleteAllByItemId(itemId);
    }

    public VolumeItem updateAllVolumeContext(List<VolumeContext> contexts, int itemId){
        Optional<VolumeItem> item = volumeItemRepo.findById(itemId);
        if (item.isPresent()){
            for(VolumeContext context: contexts){
                context.setItem(item.get());
            }
            volumeContextRepo.saveAll(contexts);
            return item.get();
        }
        return null;
    }

    public VolumeContext putVolumeContext(int itemId, VolumeContext context){
        Optional<VolumeItem> item = volumeItemRepo.findById(itemId);
        if (!item.isPresent()){
            return null;
        }
        context.setItem(item.get());
        return volumeContextRepo.save(context);
    }

    public VolumeItem saveVolumeItem(String businessId, VolumeItem item){
        Business business = getBusiness(businessId);
        item.setBusiness(business);
        return volumeItemRepo.save(item);
    }

    public void deleteVolumeItem(int id){
        volumeContextRepo.deleteAllByItemId(id);
        volumeItemRepo.deleteById(id);
    }


    @Transient
    public String putArchive(String volumeId, String boxId, String explain, String userName){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Optional<Volume> volume = volumeRepo.findById(volumeId);
        if (!volume.isPresent()) {
            return null;
        }
        if ((volume.get().getBoxId() != null) && !"".equals(volume.get().getBoxId())){
            return null;
        }
        volume.get().setBoxId(boxId);
        Business business = volume.get().getBusiness();
        business.setChangeTime(new Date());
        Operation operation = new Operation(Operation.Type.ARCHIVE,authentication.getPrincipal().toString(),userName,business,explain);
        business.getOperations().add(operation);
        business.setStatus(Business.Status.RECORDED);

        return volumeRepo.save(volume.get()).getBusiness().getId();
    }

    @Transient
    public Volume saveVolume(String businessId, Volume volume, String userName){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Business business = businessRepo.findBusinessById(businessId);
        if (business == null){
            return null;
        }
        Operation.Type type;
        if (business.getVolume() != null){
            volumeRepo.delete(business.getVolume());
            type = Operation.Type.EDITOR;
        }else{
            type = Operation.Type.RECORD;
            volume.setId(business.getDefineId() + '.' + volume.getId());
            if (!volume.isOld()){
               volume.setRecordTime(new Date());
            }
        }
        if (!Business.Status.RECORDED.equals(business.getStatus())){
            business.setStatus(Business.Status.COMPLETE);
        }

        int pageCount = 0;
        for(VolumeItem item: business.getItems()){
            for(VolumeContext context: item.getContexts()){
                pageCount += context.getPageCount();
            }
        }
        volume.setPageCount(pageCount);

        business.setVolume(volume);
        volume.setBusiness(business);

        business.setChangeTime(new Date());
        Operation operation = new Operation(type,authentication.getPrincipal().toString(),userName,business,volume.getMemo());
        business.getOperations().add(operation);
        return volumeRepo.save(volume);
    }

    public Page<Business> searchBusiness(Optional<String> key, Optional<String> define,
                                         Optional<Business.Status> status,
                                         Optional<Date> begin,
                                         Optional<Date> end,
                                         Pageable pageable){

        Specification<Business> specification  = (Specification<Business>) (root, criteriaQuery, cb) -> {



            List<Predicate> predicates = new LinkedList<>();

            if (define.isPresent()){
                predicates.add(cb.equal(root.get("defineId"),define.get()));
            }

            if (begin.isPresent()){
                predicates.add(cb.greaterThanOrEqualTo(root.get("receiveDate"),begin.get()));
            }

            if (end.isPresent()){
                predicates.add(cb.lessThanOrEqualTo(root.get("receiveDate"),end.get()));
            }

            if (status.isPresent()){
                predicates.add(cb.equal(root.get("status"),status.get()));

            }else {

                CriteriaBuilder.In<Object> in = cb.in(root.get("status"));
                in.value(Business.Status.RUNNING);
                in.value(Business.Status.CREATED);
                in.value(Business.Status.COMPLETE);
                in.value(Business.Status.RECORDED);
                in.value(Business.Status.ABORT);
                predicates.add(in);

            }

            if (key.isPresent()){

                predicates.add(cb.or(
                        cb.like(root.get("projectName") , "%" + key.get() + "%" ),
                        cb.like(root.get("key"),"%" +  key.get() + "%"),
                        cb.equal(root.join("volume",JoinType.LEFT).get("id"), key.get()),
                        cb.equal(root.get("projectId"),key.get()),
                        cb.equal(root.get("id"),key.get()),
                        cb.equal(root.get("deliverId"),key.get()),
                        cb.like(root.get("deliver"),"%" + key + "%")
                        )
                );

            }

            root.fetch("volume", JoinType.LEFT);

            return cb.and(predicates.toArray(new Predicate[predicates.size()]));
        };

        return businessSpecificationsRepo.findAll(specification,pageable);

    }



    public List<UsedDefine> listUsedDefined(){
        return  businessRepo.listUsedDefine();
    }


    public List<Operation> getOperationList(String businessId){
        return operationRepo.queryAllByBusinessIdOrderByOperationTimeDesc(businessId);
    }

    @Transactional
    public void deleteBusiness(String id){
        operationRepo.deleteAllByBusinessId(id);
        volumeContextRepo.deleteAllByItemBusinessId(id);
        volumeItemRepo.deleteAllByBusinessId(id);
        volumeRepo.deleteAllByBusinessId(id);
        fieldRepo.deleteAllByBusinessId(id);
        if (businessRepo.existsById(id)) {
            businessRepo.deleteById(id);
        }
    }

//    public String abortBusiness(String id){
//
//
//        Business business = businessRepo.findBusinessById(id);
//        if (business != null){
//            business.setStatus(Business.Status.ABORT);
//            businessRepo.save(business);
//            return business.getId();
//        }
//        return null;
//    }


    public List<BusinessField> getFields(String id){
        return fieldRepo.queryAllByBusinessIdOrderByRow(id);
    }

    public Business getBusiness(String id){
        return businessRepo.findBusinessById(id);
    }

    public List<BusinessOperation> listTopBusiness(){
        List<Business> businesses = businessRepo.queryTop10ByStatusInOrderByChangeTimeDesc(
                EnumSet.of(Business.Status.REJECT,
                        Business.Status.COMPLETE,
                        Business.Status.CREATED,
                        Business.Status.RUNNING,
                        Business.Status.RECORDED,
                        Business.Status.ABORT));
        List<BusinessOperation> result = new ArrayList<>(businesses.size());
        for(Business business: businesses){
            result.add(new BusinessOperation(business.getId(),business.getDefineName(), business.getDeliverId(), business.getDeliver(),business.getReceiveDate(),business.getStatus(),business.getOperations(),business.getVolume()));
        }
        return result;
    }

    @Transient
    public Business saveBusiness(Business business,String userName){
        if (business.getVolume() != null){
            Volume volume = business.getVolume();
            volume.setBusiness(business);
            if (business.getId() == null){
                volume.setId(business.getDefineId() + "." + volume.getId());
                volume.setPageCount(0);
            }

        }
        return businessService.saveBusiness(business,userName);
    }


}
