import { Business } from './model/business.model';
import { ValueGroup } from './model/value-group.model';
import { FieldValue } from './model/field-value.model';

export function genBusinessSearchKey(business:Business){
    business.key = "";
    business.fields.forEach((group: ValueGroup) => {
            switch (group.type){
                case 'CONSTRUCT_CORP' :{
                    if (group.option && group.option.key){
                        if ( group.fieldDefines[1].value && group.fieldDefines[1].value.trim() != "" ){
                            business.key = business.key + "[" + group.fieldDefines[1].value + "]" + "[" + group.fieldDefines[2].value + "]";
                        }
                    }
                    break;
                }
                case 'PERSON' :{

                    break;
                }
                default :{
                    
                    group.fieldDefines.forEach((value: FieldValue) => {
                  
                        if (value.option && value.option.key){
                        
                            if (value.value && (value.value.trim() != "")){
                                business.key = business.key + "[" + value.value + "]";
                            }
                        }
                    })
                }
            }
        
    });
}
