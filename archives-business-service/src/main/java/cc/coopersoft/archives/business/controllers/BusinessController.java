package cc.coopersoft.archives.business.controllers;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.security.JWTUtils;
import cc.coopersoft.archives.business.services.BusinessService;
import cc.coopersoft.comm.JsonFieldFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "v1")
public class BusinessController {

    private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);

    @Autowired
    private BusinessService businessService;

    @Autowired
    private JWTUtils JWTUtils;

    @RequestMapping(value = {"/business/search"}, method = RequestMethod.GET)
    public Page<Business> search(@RequestParam("page") Optional<Integer> page,
                                 @RequestParam("key")Optional<String> key,
                                 @RequestParam("define")Optional<String> define,
                                 @RequestParam("sort")Optional<String> sort,
                                 @RequestParam("dir")Optional<String> dir){

        logger.debug("search page:" + (page.isPresent() ? page.get() : " nav ") + "key:" + (key.isPresent() ? key.get() : " nav ") );
        return businessService.searchBusiness(key,page,define,sort,dir);
    }

    @RequestMapping(value = "/business/operations/{businessId}", method = RequestMethod.GET)
    public List<Operation> listOperation(@PathVariable("businessId")String businessId){
        return businessService.getOperationList(businessId);
    }

    @RequestMapping(value = "/business/used-define", method = RequestMethod.GET)
    public List<UsedDefine> usedDefines(){
        return businessService.listUsedDefined();
    }

    @RequestMapping(value = "/business/new", method = RequestMethod.POST)
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

    @RequestMapping(value = "/business/list/top", method = RequestMethod.GET)
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


    @RequestMapping(value = "/business/{id}", method = RequestMethod.DELETE)
    public String deleteBusiness(@PathVariable("id")String businessId){
        businessService.deleteBusiness(businessId);

        return "{\"id\":\"ok\"}";
    }

//    @RequestMapping(value = "/business/abort/{id}", method = RequestMethod.DELETE)
//    public String abortBusiness(@PathVariable("id")String businessId){
//        String id = businessService.abortBusiness(businessId);
//        if (id == null){
//            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
//        }
//        return "{\"id\":\"" + id + "\"}";
//    }

    @RequestMapping(value = "/business/volume/items/{businessId}", method = RequestMethod.GET)
    public List<VolumeItem> listVolumeItem(@PathVariable("businessId")String businessId){
        return businessService.listVolumeItem(businessId);
    }

    @RequestMapping(value = "/business/volume/item/{itemId}", method = RequestMethod.GET)
    public VolumeItem getVolumeItem(@PathVariable("itemId")int itemId){
        VolumeItem result = businessService.getVolumeItem(itemId);
        if (result == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return result;
    }

    @RequestMapping(value = "/business/volume/item/{businessId}", method = RequestMethod.PUT)
    public VolumeItem saveVolumeItem(@PathVariable("businessId") String businessId, @RequestBody VolumeItem item){
        return businessService.saveVolumeItem(businessId,item);
    }


    @RequestMapping(value = "/business/volume/{id}", method = RequestMethod.POST)
    public String saveVolume(@PathVariable("id")String businessId, @RequestBody Volume volume,
                             HttpServletRequest request){
        Volume result = businessService.saveVolume(businessId,volume,JWTUtils.getUserName(request));
        if (result == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return "{\"id\":\"" + result.getBusiness().getId() + "\"}";
    }

    @RequestMapping(value = "/business/archive/{volumeId}", method = RequestMethod.PUT)
    public String archive(@PathVariable("volumeId")String volumeId, @RequestBody OperationAction operationAction,
                          HttpServletRequest request){
        String id = businessService.putArchive(volumeId,operationAction.getId(),operationAction.getExplain(),JWTUtils.getUserName(request));
        if (id == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return "{\"id\":\"" + id + "\"}";
    }


    @RequestMapping(value = "/business/context/{itemId}", method = RequestMethod.GET)
    public List<VolumeContext> getVolumeContents(@PathVariable("itemId")int itemId){
        return businessService.listContent(itemId);
    }


    @RequestMapping(value = "/business/context/delete-item/{itemId}",method = RequestMethod.DELETE)
    public String deleteVolumeItem(@PathVariable("itemId")int itemId){
        businessService.deleteVolumeItem(itemId);
        return "{\"id\":" + itemId + "}";
    }

    @RequestMapping(value = "/business/field/{businessId}", method = RequestMethod.GET)
    public List<BusinessField> getBusinessFields(@PathVariable("businessId")String businessId){
        return businessService.getFields(businessId);
    }

    @RequestMapping(value="/business/context/{itemId}",method =RequestMethod.PUT)
    public VolumeContext saveVolumeContext(@PathVariable("itemId")int itemId, @RequestBody VolumeContext context){
        VolumeContext result =  businessService.putVolumeContext(itemId,context);
        if (result == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return result;
    }

    @RequestMapping(value="/business/content/all/{itemId}",method = RequestMethod.PUT)
    public String putAllVolumeContext(@PathVariable("itemId")int itemId, @RequestBody List<VolumeContext> contexts){
        VolumeItem item = businessService.updateAllVolumeContext(contexts,itemId);
        if (item == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,"business not found!");
        }
        return "{\"id\":" +  item.getId() + "}";
    }

    @RequestMapping(value = "/business/content/delete/{contextId}",method = RequestMethod.DELETE)
    public String delVolumeContext(@PathVariable("contextId")String contextId){
        businessService.deleteVolumeContext(contextId);
        return "{\"id\":\"" + contextId + "\"}";
    }

    @RequestMapping(value = "/business/content/clear/{itemId}",method = RequestMethod.DELETE)
    public String clearVolumeContext(@PathVariable("itemId")int itemId){
        businessService.clearVolumeContext(itemId);
        return "{\"id\":" + itemId + "}";
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
