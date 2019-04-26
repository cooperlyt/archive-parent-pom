package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.BusinessField;
import cc.coopersoft.archives.business.model.FieldValue;
import cc.coopersoft.archives.business.model.VolumeContext;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import cc.coopersoft.archives.business.repository.VolumeContextRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BusinessService {

    @Autowired
    private BusinessRepo businessRepo;

    @Autowired
    private VolumeContextRepo volumeContextRepo;

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


    public Business getBusiness(String id){
        return businessRepo.findBusinessById(id);
    }

    public Business saveBusiness(Business business){
        if ((business.getId() == null) || (business.getId().trim().equals("")) ){
            Integer seq = businessRepo.maxSeq();
            if (seq == null){
                seq = 0;
            }
            seq += 1;
            business.setSeq(seq);
            business.setId(business.getDefineId() + "." + seq);
            business.setVersion(1);
        }
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
