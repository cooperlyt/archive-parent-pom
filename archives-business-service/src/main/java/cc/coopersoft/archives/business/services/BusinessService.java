package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.BusinessField;
import cc.coopersoft.archives.business.model.FieldValue;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class BusinessService {

    @Autowired
    private BusinessRepo businessRepo;


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
}
