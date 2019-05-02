package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import cc.coopersoft.archives.business.repository.FieldRepo;
import cc.coopersoft.archives.business.repository.OperationRepo;
import cc.coopersoft.archives.business.repository.VolumeContextRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;

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

    public List<Operation> getOperationList(String businessId){
        return operationRepo.queryAllByBusinessIdOrderByOperationTimeDesc(businessId);
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
