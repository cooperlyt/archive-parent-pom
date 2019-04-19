package cc.coopersoft.construct.corp.controllers;

import cc.coopersoft.construct.corp.model.ConstructCorp;
import cc.coopersoft.construct.corp.model.CorpSummary;
import cc.coopersoft.construct.corp.services.CorpService;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "v1/corp")
public class CorpController {

    @Autowired
    private CorpService corpService;

    @RequestMapping(value = "/summary/{type}", method = RequestMethod.GET)
    public List<CorpSummary> listCorpSummary(@PathVariable("type")CorpType type){

        return corpService.listCorpSummary(type);
    }
}
