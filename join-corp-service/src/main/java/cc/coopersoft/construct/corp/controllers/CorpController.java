package cc.coopersoft.construct.corp.controllers;

import cc.coopersoft.construct.corp.model.ConstructCorp;
import cc.coopersoft.construct.corp.model.Corp;
import cc.coopersoft.construct.corp.model.CorpSummary;
import cc.coopersoft.construct.corp.services.CorpService;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "v1/corp")
public class CorpController {

    @Autowired
    private CorpService corpService;

    @RequestMapping(value = "/summary/{type}", method = RequestMethod.GET)
    public List<CorpSummary> listCorpSummary(@PathVariable("type")CorpType type){

        return corpService.listCorpSummary(type);
    }

    @RequestMapping(value = {"/list/{type}" , "/list"}, method = RequestMethod.GET)
    public List<Corp> listCorp(@PathVariable(required = false,value = "type") Optional<CorpType> type){
        return corpService.listAllValidCorp(type);
    }

    @RequestMapping(value="/save", method = RequestMethod.PUT)
    public Corp saveCorp(@RequestBody Corp corp){
        return corpService.saveCorp(corp);
    }
}
