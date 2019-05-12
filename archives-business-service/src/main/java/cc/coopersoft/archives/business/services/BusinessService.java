package cc.coopersoft.archives.business.services;

import cc.coopersoft.archives.business.model.*;
import cc.coopersoft.archives.business.repository.BusinessRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class BusinessService  {

    private static final Logger logger = LoggerFactory.getLogger(BusinessService.class);

    @Autowired
    private BusinessRepo businessRepo;

    public Business saveBusiness(Business business, String userName){

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
                            if (o == null){
                                value = "";
                            }else
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
