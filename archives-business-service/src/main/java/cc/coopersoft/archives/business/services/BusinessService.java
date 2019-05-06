package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.repository.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class BusinessService {

    private static final Logger logger = LoggerFactory.getLogger(BusinessService.class);

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

    public Page<Business> searchBusiness(Optional<String> key, Optional<Integer> page ,
                                         Optional<String> define,
                                         Optional<String> sort,
                                         Optional<String> dir){

        Sort sortable = new Sort((dir.isPresent() ? ("DESC".equals(dir.get()) ? Sort.Direction.DESC : Sort.Direction.ASC) : Sort.Direction.DESC)
                , (sort.isPresent() ? sort.get() : "changeTime"));
        Pageable pageable = PageRequest.of(page.isPresent() ? page.get() : 0 ,20,sortable);
        if (key.isPresent()) {
            String searchKey = key.get();
            if (define.isPresent()){
                return businessSearchRepo.findAllByDefineIdAndIdOrDefineIdAndKeyContainingOrDefineIdAndDeliverContainingOrDefineIdAndDeliverId(define.get(),searchKey,define.get(), searchKey,define.get(), searchKey,define.get(), searchKey, pageable);
            }else
                return businessSearchRepo.findAllByIdOrKeyContainingOrDeliverContainingOrDeliverId(searchKey, searchKey, searchKey, searchKey, pageable);
        }else{
            if (define.isPresent()){
                return businessSearchRepo.findAllByDefineId(define.get(),pageable);
            }else
                return businessSearchRepo.findAll(pageable);
        }
    }

    public List<UsedDefine> listUsedDefined(){
        return  businessRepo.listUsedDefine();
    }


    public List<Operation> getOperationList(String businessId){
        return operationRepo.queryAllByBusinessIdOrderByOperationTimeDesc(businessId);
    }

    @Transactional
    public String deleteBusiness(String id){
        Business business = businessRepo.findBusinessById(id);
        if (business != null) {
            operationRepo.deleteAll(business.getOperations());
            volumeContextRepo.deleteAll(business.getContexts());
            for(BusinessField field: business.getFields()){
                field.getValues().clear();
                fieldRepo.save(field);
            }
            fieldRepo.deleteAll(business.getFields());
            volumeRepo.deleteAllByBusinessId(id);
            businessRepo.delete(business);
            return business.getId();
        }else{
            return null;
        }
    }

    public String abortBusiness(String id){
        Business business = businessRepo.findBusinessById(id);
        if (business != null){
            business.setStatus(Business.Status.ABORT);
            businessRepo.save(business);
            return business.getId();
        }
        return null;
    }

    public void deleteVolumeContext(String contextId){
        volumeContextRepo.deleteById(contextId);
    }

    public int clearVolumeContext(String businessId){
        int result = 0;
        Business business = getBusiness(businessId);
        if (business != null){
            result = business.getContexts().size();
            business.getContexts().clear();
            businessRepo.save(business);
        }
        return result;
    }

    public int updateAllVolumeContext(List<VolumeContext> contexts, String businessId){
        int result = 0;
        Business business = getBusiness(businessId);
        if (business !=null ){
            for(VolumeContext context: contexts){
                context.setBusiness(business);
            }
            result = business.getContexts().size();
            business.getContexts().clear();
            business.getContexts().addAll(contexts);

            businessRepo.save(business);
        }
        return result;
    }

    public List<VolumeContext> listContent(String businessId){
       return volumeContextRepo.queryAllByBusinessIdOrderByOrdinal(businessId);
    }

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
                        Business.Status.RECORDED,
                        Business.Status.ABORT));
        List<BusinessOperation> result = new ArrayList<>(businesses.size());
        for(Business business: businesses){
            result.add(new BusinessOperation(business.getId(),business.getDefineName(), business.getDeliverId(), business.getDeliver(),business.getReceiveDate(),business.getStatus(),business.getOperations()));
        }
        return result;
    }

    public Business saveBusiness(Business business,String userName){

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        Operation.Type type;
        if ((business.getId() == null) || (business.getId().trim().equals("")) ){
            Integer seq = businessRepo.maxSeq();
            if (seq == null){
                seq = 0;
            }
            seq += 1;
            business.setSeq(seq);
            business.setId(business.getDefineId() + "." + seq);
            business.setVersion(1);
            type = Operation.Type.CREATE;
        }else {
            type = Operation.Type.EDITOR;
        }

        business.setChangeTime(new Date());

        Operation operation = new Operation(type,authentication.getPrincipal().toString(),userName,new Date(),business);
        business.getOperations().add(operation);

        if (business.getReceiveDate() == null){
            business.setReceiveDate(new Date());
        }

        for(BusinessField field: business.getFields()){
            if (field.getBusiness() == null){
                field.setBusiness(business);
            }
            for(FieldValue value: field.getValues()){
                if (value.getField() == null){
                    value.setField(field);
                }
            }
        }



        return businessRepo.save(business);
    }

    public VolumeContext putVolumeContext(String businessId, VolumeContext context){
        Business business = businessRepo.findBusinessById(businessId);
        if (business == null){
            return null;
        }
        context.setBusiness(business);
        return volumeContextRepo.save(context);

    }
}
