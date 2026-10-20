trigger LeadTriggerHandler on Lead (before update){
    
    // Where ever the lead is update and industry is Healthcare set lead status as Purachased list 
    
    if(Trigger.isBefore){
        
        if(Trigger.isInsert){
            for(Lead leadRecord : Trigger.new){
                leadRecord.status='Working - Contacted';
                if(leadRecord.Industry == 'HealthCare'){
                    leadRecord.SICCode__c = '1100';
                    leadRecord.Primary__c = 'Yes';
                }
            }  
            
        }else if(Trigger.isUpdate){
            for(Lead leadRecord : Trigger.new){
                if(leadRecord.Industry == 'HealthCare'){
                    leadRecord.Status = 'Purchased List';
                    leadRecord.SICCode__c = '1200';
                    leadRecord.Primary__c = 'Yes';
                }
            }
        }
    }
}