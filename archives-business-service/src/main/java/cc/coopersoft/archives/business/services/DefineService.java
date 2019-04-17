package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.BusinessDefine;
import cc.coopersoft.archives.business.model.BusinessDefineSummary;
import cc.coopersoft.archives.business.repository.BusinessDefineRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class DefineService {

    @Autowired
    private BusinessDefineRep businessDefineRep;

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

    public Business createInstance(String defineId){
        BusinessDefine define = getDefine(defineId);
        if (define == null){
            return null;
        }
        Business result = new Business();
        result.setDefineId(define.getId());
        result.setDefineName(define.getBusinessCategory().getName() + "/" + define.getName());
        //todo other
        return result;
    }
}
