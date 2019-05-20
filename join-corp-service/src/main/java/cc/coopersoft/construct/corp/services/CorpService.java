package cc.coopersoft.construct.corp.services;

import cc.coopersoft.construct.corp.model.ConstructCorp;
import cc.coopersoft.construct.corp.model.Corp;
import cc.coopersoft.construct.corp.model.CorpSummary;
import cc.coopersoft.construct.corp.repository.ConstructCorpRep;
import cc.coopersoft.construct.corp.repository.CorpRepo;
import cc.coopersoft.construct.data.CorpStatus;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.Optional;

@Service
public class CorpService {

    @Autowired
    private ConstructCorpRep constructCorpRep;

    @Autowired
    private CorpRepo corpRepo;

    public List<ConstructCorp> listConstructCorp(CorpType type){
        return constructCorpRep.findAllByTypeEqualsAndStatusInOrderByRegDate(type,
                EnumSet.of(CorpStatus.MODIFY,
                        CorpStatus.NO,
                        CorpStatus.REG
                        ));
    }

    public List<CorpSummary> listCorpSummary(CorpType type){
        return constructCorpRep.listCorpSummary(type,
                EnumSet.of(CorpStatus.MODIFY,
                        CorpStatus.NO,
                        CorpStatus.REG
                ));
    }

    public List<Corp> listAllValidCorp(Optional<CorpType> type){
        if (type.isPresent()){
            return corpRepo.listValidCorpByType(type.get());
        }else{
            return corpRepo.queryAllByEnableTrueOrderByDataTimeDesc();
        }
    }

    public Corp saveCorp(Corp corp){
        if (corp.getId() == null){
            corp.setId(corp.getCorpIdType().getCode() + corp.getNumber());
            corp.setDataTime(new Date());
        }
        return corpRepo.save(corp);
    }
}
