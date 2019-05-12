package cc.coopersoft.business.controllers;

import cc.coopersoft.business.model.BusinessDefine;
import cc.coopersoft.business.model.BusinessDefineSummary;
import cc.coopersoft.business.model.DefaultRecord;
import cc.coopersoft.business.services.TemplateService;
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
public class TemplateController {

    @Autowired
    private TemplateService templateService;

    @RequestMapping(value = "/mine", method = RequestMethod.GET)
    public List<BusinessDefineSummary> listBusinessDefine(){
        return templateService.getMineDefine();
    }

    @RequestMapping(value = "/define/{id}",method = RequestMethod.GET)
    public BusinessDefine getDefine(@PathVariable("id")String id){
        BusinessDefine result = templateService.getDefine(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return templateService.getDefine(id);
    }

    @RequestMapping(value = "/record/{id}", method = RequestMethod.GET)
    public DefaultRecord getDefaultRecord(@PathVariable("id") String id){
        DefaultRecord result = templateService.getDefaultRecord(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/corp/defines", method = RequestMethod.GET)
    public List<BusinessDefineSummary> listCorpDefine(){
        return templateService.getAllDefine();
    }

}
