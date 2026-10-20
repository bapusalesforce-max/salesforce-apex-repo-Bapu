public class OpportunityTriggerHandlerNew {
    
    public static void createTaskforOpportunity(List<Opportunity> oppRecords , Map<Id , Opportunity> oppOldRecord){
        
        List<Task> taskToInsert = new List<Task>();  /// to hold the bulk records 
        
        for(Opportunity opp : oppRecords){  // here iterating one by one 
            
            Opportunity oppOld = oppOldRecord.get(opp.id); // used to get the older version ; pass the id and get the oldversion of the opp records in the key value pair
            
            if(oppOld!=null && oppOld.StageName !='Closed Won' && opp.StageName == 'Closed Won'){
                
                Task taskRecord = new Task(WhatId = Opp.Id,OwnerId = Opp.OwnerId,Subject='Call',Status='Not Started',Priority='Normal',Description='Please split the revene amoung the opportunity owners');  // to create a new Task record , we need to create the instance of  the Task object ;
                
                /*taskRecord.WhatId = opp.Id;    // whatId used to refere the non-human things 
                taskRecord.OwnerId = opp.OwnerId;
                taskRecord.Subject = 'Call';
                taskRecord.Description = 'Please split the revene amoung the opportunity owners';
                taskToInsert.add(taskRecord);*/
            }
            
        }
        
        if(!taskToInsert.isEmpty()){   
            
            List<Database.SaveResult> results = Database.insert(taskToInsert,false);
            
            for(Database.SaveResult sr :results){
                if(sr.isSuccess()){
                    System.debug('Task Record inserted successfully :'+ sr.getId());
                }else{
                    for(Database.Error err : sr.getErrors()){
                        System.debug('Error Message: ' + err.getMessage());
                        System.debug('Status Code: ' + err.getStatusCode());
                        System.debug('Fields: ' + err.getFields());
                    }
                }
            }
            
            /*try{
            insert taskToInsert;
            }catch(DMLException e){
            System.debug('Task insert failed : ' + e.getMessage());
            }*/
        }
        
    }
}