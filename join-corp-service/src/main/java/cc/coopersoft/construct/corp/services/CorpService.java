package cc.coopersoft.construct.corp.services;

import cc.coopersoft.construct.corp.model.ConstructCorp;
import cc.coopersoft.construct.corp.model.CorpSummary;
import cc.coopersoft.construct.corp.repository.ConstructCorpRep;
import cc.coopersoft.construct.data.CorpStatus;
import cc.coopersoft.construct.data.CorpType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.EnumSet;
import java.util.List;

@Service
public class CorpService {

    @Autowired
    private ConstructCorpRep constructCorpRep;

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
}
