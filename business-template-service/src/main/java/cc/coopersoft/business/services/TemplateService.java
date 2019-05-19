package cc.coopersoft.business.services;

import cc.coopersoft.business.model.BusinessCategory;
import cc.coopersoft.business.model.BusinessDefine;
import cc.coopersoft.business.model.BusinessDefineSummary;
import cc.coopersoft.business.model.DefaultRecord;
import cc.coopersoft.business.repository.BusinessCategoryRepo;
import cc.coopersoft.business.repository.BusinessDefineRep;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class TemplateService {

    @Autowired
    private BusinessDefineRep businessDefineRep;

    @Autowired
    private BusinessCategoryRepo businessCategoryRepo;

    private Set<String> getMineRoles(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            return AuthorityUtils.authorityListToSet(authentication.getAuthorities());
        }
        return null;
    }


    public List<BusinessDefineSummary> getMineDefine(){
        return businessDefineRep.listDefineSummaryByRole(getMineRoles());
    }

    public BusinessDefine getDefine(String id){
        return businessDefineRep.getBusinessDefineById(id);
    }

    public DefaultRecord getDefaultRecord(String id){
        return businessDefineRep.getDefaultRecord(id);
    }


    public List<BusinessDefineSummary> getAllDefine(){
        return businessDefineRep.listDefineSummary();
    }

    public List<BusinessCategory> listAllCategory(){
        return businessCategoryRepo.findAllByOrderByPriority();
    }

    public List<BusinessDefineSummary> listDefineByCategory(String categoryId){
        return businessDefineRep.listDefineSummaryByCategory(categoryId);
    }


}
