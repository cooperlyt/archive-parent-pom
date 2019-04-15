package cc.coopersoft.archives.business.define.controllers;

import cc.coopersoft.archives.business.define.model.BusinessDefineSummary;
import cc.coopersoft.archives.business.define.services.DefineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value="v1/define")
public class DefineControllers {

    @Autowired
    private DefineService defineService;

    @RequestMapping(value = "/mine", method = RequestMethod.GET)
    public List<BusinessDefineSummary> listBusinessDefine(){
        return defineService.getMineDefine();
    }
}
