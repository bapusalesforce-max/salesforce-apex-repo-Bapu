trigger CaseTriggerHandler on Case (before insert,before update) {
    
    // Whenevere the case is created and case origin is 'Phone', then the priority should be high else , low ;
    // case is created means before insert ; 
    
    if(Trigger.isBefore){ 
        if(Trigger.isInsert || Trigger.isUpdate){
            for(Case caseRecord : Trigger.new){
                if(caseRecord.Origin=='Phone'){
                    caseRecord.Priority='High';       
                }else if(caseRecord.Origin=='Email'){
                    caseRecord.Priority ='Low'; 
                    
                }else if(caseRecord.Origin=='Web'){
                    caseRecord.Priority = 'Normal';
                }
            }
            
        }
        
    }
}