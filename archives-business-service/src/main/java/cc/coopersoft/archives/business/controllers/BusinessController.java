package cc.coopersoft.archives.business.controllers;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.security.JWTUtils;
import cc.coopersoft.archives.business.services.BusinessService;
import cc.coopersoft.comm.JsonFieldFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "v1")
public class BusinessController {

    private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);

    @Autowired
    private BusinessService businessService;

    @Autowired
    private JWTUtils JWTUtils;

    @RequestMapping(value = "/business/operations/{businessId}", method = RequestMethod.GET)
    public List<Operation> listOperation(@PathVariable("businessId")String businessId){
        return businessService.getOperationList(businessId);
    }


    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String createBusiness(@RequestBody Business business, HttpServletRequest request){
        logger.debug("------------ PUT NEW BUSINESS -------------------");

        Business result = businessService.saveBusiness(business, JWTUtils.getUserName(request));

        if (result == null) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_ACCEPTABLE, "entity error！"
            );
        }

        return "{\"id\":\"" + result.getId() + "\"}";
    }

    @RequestMapping(value = "/list/top", method = RequestMethod.GET)
    public List<BusinessOperation> listBusinessTop(){
        return businessService.listTopBusiness();
    }

    @RequestMapping(value = "/business/{id}", method = RequestMethod.GET)
    public Business getBusiness(@PathVariable("id") String id){
        logger.debug("request id:" + id);
        Business business = businessService.getBusiness(id);
        if (business == null){
            logger.debug("business is:" + id);
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found! ");
        }
        return business;
    }

    @RequestMapping(value = "/business/context/{businessId}", method = RequestMethod.GET)
    public List<VolumeContext> getVolumeContents(@PathVariable("businessId")String businessId){
        return businessService.listContent(businessId);
    }

    @RequestMapping(value = "/business/field/{businessId}", method = RequestMethod.GET)
    public List<BusinessField> getBusinessFields(@PathVariable("businessId")String businessId){
        return businessService.getFields(businessId);
    }

    @RequestMapping(value="/business/context/{businessId}",method =RequestMethod.PUT)
    public String putVolumeContext(@PathVariable("businessId")String businessId, @RequestBody VolumeContext context){
        VolumeContext result =  businessService.putVolumeContext(businessId,context);
        if (result == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return "{\"id\":\"" + result.getId() + "\"}";
    }

    @RequestMapping(value="/business/content/all/{businessId}",method = RequestMethod.PUT)
    public String putAllVolumeContext(@PathVariable("businessId")String businessId, @RequestBody List<VolumeContext> contexts){
        int result = businessService.updateAllVolumeContext(contexts,businessId);
        return "{\"count\":\"" + result + "\"}";
    }

    @RequestMapping(value = "/business/content/delete/{contextId}",method = RequestMethod.DELETE)
    public String delVolumeContext(@PathVariable("contextId")String contextId){
        businessService.deleteVolumeContext(contextId);
        return "{\"id\":\"" + contextId + "\"}";
    }

    @RequestMapping(value = "/business/content/clear/{businessId}",method = RequestMethod.DELETE)
    public String clearVolumeContext(@PathVariable("businessId")String businessId){
        int count = businessService.clearVolumeContext(businessId);
        return "{\"count\":\"" + count + "\"}";
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
