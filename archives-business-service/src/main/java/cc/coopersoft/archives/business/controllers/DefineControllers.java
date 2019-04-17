package cc.coopersoft.archives.business.controllers;

import cc.coopersoft.archives.business.model.Business;
import cc.coopersoft.archives.business.model.BusinessDefine;
import cc.coopersoft.archives.business.model.BusinessDefineSummary;
import cc.coopersoft.archives.business.services.DefineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping(value="v1")
public class DefineControllers {

    @Autowired
    private DefineService defineService;

    @RequestMapping(value = "/mine", method = RequestMethod.GET)
    public List<BusinessDefineSummary> listBusinessDefine(){
        return defineService.getMineDefine();
    }

    @RequestMapping(value = "/define/{id}",method = RequestMethod.GET)
    public BusinessDefine getDefine(@PathVariable("id")String id){
        return defineService.getDefine(id);
    }

    @RequestMapping(value = "/instance/{id}" , method = RequestMethod.GET)
    public Business instance(@PathVariable("id")String id){
        Business result = defineService.createInstance(id);
        if (result != null){
            return result;
        }

        throw new ResponseStatusException(
                HttpStatus.NOT_FOUND, "define entity not found"
        );
    }
}
