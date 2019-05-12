package cc.coopersoft.archives.business.controllers;


import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.OperationAction;
import cc.coopersoft.archives.business.model.UsedDefine;
import cc.coopersoft.archives.business.security.JWTUtils;
import cc.coopersoft.archives.business.services.CorpBusinessService;
import cc.coopersoft.archives.business.services.GovBusinessService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "v1")
public class CorpBusiness {

    private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);


    @Autowired
    private CorpBusinessService corpBusinessService;

    @Autowired
    private JWTUtils jwtUtils;

    @RequestMapping(value = "/corp/save",method = RequestMethod.PUT)
    public String saveBusiness(HttpServletRequest request, @RequestBody Business business){

        Business result = corpBusinessService.saveBusiness(jwtUtils.getUserToke(request),business);
        if (result == null) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_ACCEPTABLE, "entity error！"
            );
        }
        return "{\"id\":\"" + result.getId() + "\"}";
    }

    @RequestMapping(value = {"/corp/search"}, method = RequestMethod.GET)
    public Page<Business> search(HttpServletRequest request,
                                 @RequestParam("page") Optional<Integer> page,
                                 @RequestParam("key")Optional<String> key,
                                 @RequestParam("define")Optional<String> define,
                                 @RequestParam("sort")Optional<String> sort,
                                 @RequestParam("dir")Optional<String> dir){
        Sort sortable = new Sort((dir.isPresent() ? ("DESC".equals(dir.get()) ? Sort.Direction.DESC : Sort.Direction.ASC) : Sort.Direction.DESC)
                , (sort.isPresent() ? sort.get() : "changeTime"));

        return corpBusinessService.searchBusiness(jwtUtils.getOrgId(request) ,key,define,PageRequest.of(page.isPresent() ? page.get() : 0, 20,sortable ));
    }

    @RequestMapping(value = "/corp/used-define", method = RequestMethod.GET)
    public List<UsedDefine> listUsedDefine(HttpServletRequest request){
        return corpBusinessService.listUsedDefined(jwtUtils.getOrgId(request));
    }

    @RequestMapping(value ="/corp/commit", method = RequestMethod.PUT)
    public String commitBusiness(HttpServletRequest request,
                                 @RequestBody OperationAction action){
        logger.debug("commit business id:" + action.getId());
        Business result = corpBusinessService.submitBusiness(jwtUtils.getUserToke(request),action.getId(),action.getExplain());
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_ACCEPTABLE, "entity error！"
            );
        }
        return "{\"id\":\"" + result.getId() + "\"}";
    }


}
