package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BusinessService {

    @Autowired
    private BusinessRepo businessRepo;


    public Business getBusiness(String id){
        return businessRepo.findBusinessById(id);
    }

    public Business saveBusiness(Business business){
        return businessRepo.save(business);
    }
}
