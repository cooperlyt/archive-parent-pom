package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.repository.*;
import cc.coopersoft.construct.data.VolumeItemType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Transient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@PreAuthorize("hasRole('USER')")
public class BusinessService {

    private static final Logger logger = LoggerFactory.getLogger(BusinessService.class);

    @Autowired
    private BusinessRepo businessRepo;

    @Autowired
    private VolumeContextRepo volumeContextRepo;

    @Autowired
    private FieldRepo fieldRepo;

    @Autowired
    private OperationRepo operationRepo;

    @Autowired
    private VolumeRepo volumeRepo;

    @Autowired
    private BusinessSearchRepo businessSearchRepo;

    @Autowired
    private VolumeItemRepo volumeItemRepo;

    public List<VolumeContext> listContent(int itemId){
        return volumeContextRepo.queryAllByItemIdOrderByOrdinal(itemId);
    }

    public List<VolumeItem> listVolumeItem(String businessId){
        return volumeItemRepo.queryAllByBusinessIdOrderBySeqAsc(businessId);
    }

    public VolumeItem getVolumeItem(int id){
        Optional<VolumeItem> item = volumeItemRepo.findById(id);
        if (item.isPresent()){
            return item.get();
        }
        return null;
    }

    public void deleteVolumeContext(String contextId){
        volumeContextRepo.deleteById(contextId);
    }

    public void clearVolumeContext(int itemId){
        volumeContextRepo.deleteAllByItemId(itemId);
    }

    public VolumeItem updateAllVolumeContext(List<VolumeContext> contexts, int itemId){
        Optional<VolumeItem> item = volumeItemRepo.findById(itemId);
        if (item.isPresent()){
            for(VolumeContext context: contexts){
                context.setItem(item.get());
            }
            volumeContextRepo.saveAll(contexts);
            return item.get();
        }
        return null;
    }

    public VolumeContext putVolumeContext(int itemId, VolumeContext context){
        Optional<VolumeItem> item = volumeItemRepo.findById(itemId);
        if (!item.isPresent()){
            return null;
        }
        context.setItem(item.get());
        return volumeContextRepo.save(context);
    }

    public VolumeItem saveVolumeItem(String businessId, VolumeItem item){
        Business business = getBusiness(businessId);
        item.setBusiness(business);
        return volumeItemRepo.save(item);
    }

    public void deleteVolumeItem(int id){
        volumeContextRepo.deleteAllByItemId(id);
        volumeItemRepo.deleteById(id);
    }


    @Transient
    public String putArchive(String volumeId, String boxId, String explain, String userName){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Optional<Volume> volume = volumeRepo.findById(volumeId);
        if (!volume.isPresent()) {
            return null;
        }
        if ((volume.get().getBoxId() != null) && !"".equals(volume.get().getBoxId())){
            return null;
        }
        volume.get().setBoxId(boxId);
        Business business = volume.get().getBusiness();
        business.setChangeTime(new Date());
        Operation operation = new Operation(Operation.Type.ARCHIVE,authentication.getPrincipal().toString(),userName,business,explain);
        business.getOperations().add(operation);
        business.setStatus(Business.Status.RECORDED);

        return volumeRepo.save(volume.get()).getBusiness().getId();
    }

    @Transient
    public Volume saveVolume(String businessId, Volume volume, String userName){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Business business = businessRepo.findBusinessById(businessId);
        if (business == null){
            return null;
        }
        Operation.Type type;
        if (business.getVolume() != null){
            volumeRepo.delete(business.getVolume());
            type = Operation.Type.EDITOR;
        }else{
            type = Operation.Type.RECORD;
            volume.setId(business.getDefineId() + '.' + volume.getId());
            if (!volume.isOld()){
               volume.setRecordTime(new Date());
            }
        }
        if (!Business.Status.RECORDED.equals(business.getStatus())){
            business.setStatus(Business.Status.COMPLETE);
        }

        int pageCount = 0;
        for(VolumeItem context: business.getItems()){
            pageCount += context.getPageCount();
        }
        volume.setPageCount(pageCount);

        business.setVolume(volume);
        volume.setBusiness(business);

        business.setChangeTime(new Date());
        Operation operation = new Operation(type,authentication.getPrincipal().toString(),userName,business,volume.getMemo());
        business.getOperations().add(operation);
        return volumeRepo.save(volume);
    }

    public Page<Business> searchBusiness(Optional<String> key, Optional<Integer> page ,
                                         Optional<String> define,
                                         Optional<String> sort,
                                         Optional<String> dir){

        Sort sortable = new Sort((dir.isPresent() ? ("DESC".equals(dir.get()) ? Sort.Direction.DESC : Sort.Direction.ASC) : Sort.Direction.DESC)
                , (sort.isPresent() ? sort.get() : "changeTime"));
        Pageable pageable = PageRequest.of(page.isPresent() ? page.get() : 0 ,20,sortable);
        if (key.isPresent()) {
            String searchKey = key.get();
            if (define.isPresent()){
                return businessSearchRepo.findAllByDefineIdAndIdOrDefineIdAndKeyContainingOrDefineIdAndDeliverContainingOrDefineIdAndDeliverId(define.get(),searchKey,define.get(), searchKey,define.get(), searchKey,define.get(), searchKey, pageable);
            }else
                return businessSearchRepo.findAllByIdOrKeyContainingOrDeliverContainingOrDeliverId(searchKey, searchKey, searchKey, searchKey, pageable);
        }else{
            if (define.isPresent()){
                return businessSearchRepo.findAllByDefineId(define.get(),pageable);
            }else
                return businessSearchRepo.findAll(pageable);
        }
    }

    public List<UsedDefine> listUsedDefined(){
        return  businessRepo.listUsedDefine();
    }


    public List<Operation> getOperationList(String businessId){
        return operationRepo.queryAllByBusinessIdOrderByOperationTimeDesc(businessId);
    }

    @Transactional
    public void deleteBusiness(String id){
        operationRepo.deleteAllByBusinessId(id);
        volumeContextRepo.deleteAllByItemBusinessId(id);
        volumeItemRepo.deleteAllByBusinessId(id);
        volumeRepo.deleteAllByBusinessId(id);
        fieldRepo.deleteAllByBusinessId(id);
        businessRepo.deleteById(id);
    }

//    public String abortBusiness(String id){
//
//
//        Business business = businessRepo.findBusinessById(id);
//        if (business != null){
//            business.setStatus(Business.Status.ABORT);
//            businessRepo.save(business);
//            return business.getId();
//        }
//        return null;
//    }


    public List<BusinessField> getFields(String id){
        return fieldRepo.queryAllByBusinessIdOrderByRow(id);
    }

    public Business getBusiness(String id){
        return businessRepo.findBusinessById(id);
    }

    public List<BusinessOperation> listTopBusiness(){
        List<Business> businesses = businessRepo.queryTop10ByStatusInOrderByChangeTimeDesc(
                EnumSet.of(Business.Status.REJECT,
                        Business.Status.COMPLETE,
                        Business.Status.CREATED,
                        Business.Status.RECORDED,
                        Business.Status.ABORT));
        List<BusinessOperation> result = new ArrayList<>(businesses.size());
        for(Business business: businesses){
            result.add(new BusinessOperation(business.getId(),business.getDefineName(), business.getDeliverId(), business.getDeliver(),business.getReceiveDate(),business.getStatus(),business.getOperations()));
        }
        return result;
    }

    @Transient
    public Business saveBusiness(Business business,String userName){

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        Operation.Type type;
        if ((business.getId() == null) || (business.getId().trim().equals("")) ){
            Integer seq = businessRepo.maxSeq();
            if (seq == null){
                seq = 0;
            }
            seq += 1;
            business.setSeq(seq);
            business.setId(business.getDefineId() + "." + seq);
            business.setVersion(1);
            type = Operation.Type.CREATE;

        }else {
            type = Operation.Type.EDITOR;
        }

        if (business.getReceiveDate() == null){
            business.setReceiveDate(new Date());
        }

        for(BusinessField field: business.getFields()){
            if (field.getBusiness() == null){
                field.setBusiness(business);
            }
            for(FieldValue value: field.getValues()){
                if (value.getField() == null){
                    value.setField(field);
                }
            }
        }

        for(VolumeItem item: business.getItems()){
            item.setBusiness(business);
        }


        if (business.getSummaryTemplate() != null){
            Pattern p = Pattern.compile("\\{([^\\.\\{\\}]*)\\.([^\\.\\{\\}]+)\\}");
            logger.debug("summary reg :" + "\\{([^\\.\\{\\}]*)\\.([^\\.\\{\\}]+)\\}");
            Matcher matcher = p.matcher(business.getSummaryTemplate());
            StringBuffer summary = new StringBuffer();
            while (matcher.find()){
                String value = " ";
                String path = matcher.group(1);
                logger.debug("summary find path:" + path);
                if ((path == null) || "".equals(path.trim())){
                    Class clazz = business.getClass();
                    try {
                        PropertyDescriptor pd = new PropertyDescriptor(matcher.group(2), clazz);
                        Method getMethod = pd.getReadMethod();
                        if (pd != null) {
                            Object o = getMethod.invoke(business);
                            value = o.toString();
                            logger.debug("put field value:" + value);
                        }else{
                            logger.warn("summary field not found:" + matcher.group(2));
                        }
                    } catch (IllegalAccessException e) {
                        logger.warn("summary field  read error:" + matcher.group(2) ,e);
                    } catch (IntrospectionException e) {
                        logger.warn("summary field  read error:" + matcher.group(2) ,e);
                    } catch (InvocationTargetException e) {
                        logger.warn("summary field  read error:" + matcher.group(2) ,e);
                    }
                }else{
                    for(BusinessField field: business.getFields()){
                        if (matcher.group(1).equals(field.getDefine())){
                            for(FieldValue fv: field.getValues()){
                                if (Integer.valueOf(matcher.group(2)).intValue() == fv.getOrdinal() ){
                                    value = fv.getValue();
                                    break;
                                }
                            }
                            break;
                        }
                    }

                }
                matcher.appendReplacement(summary, value);
            }
            matcher.appendTail(summary);
            logger.debug("business summary:" + summary.toString());
            business.setSummary(summary.toString());
        }

        business.setChangeTime(new Date());

        Operation operation = new Operation(type,authentication.getPrincipal().toString(),userName,business,
                ((business.getMemo() == null) || "".equals(business.getMemo().trim())) ? business.getSummary() : business.getMemo() );
        business.getOperations().add(operation);




        return businessRepo.save(business);
    }


}
