package cc.coopersoft.archives.business.controllers;

import cc.coopersoft.archives.business.model.Business;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "v1")
public class BusinessController {

    private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String createBusiness(@RequestBody Business business){
        logger.debug("------------ PUT NEW BUSINESS -------------------");
        logger.debug(business.getDefineName());
        return "9999";
    }

    @RequestMapping(value = "/status",method = RequestMethod.GET)
    public String status(){
        logger.debug("---------log debug");
        logger.info("--- log info");
        logger.warn("---log warn");
        logger.error("---log error");

        return "server is running";
    }
}
