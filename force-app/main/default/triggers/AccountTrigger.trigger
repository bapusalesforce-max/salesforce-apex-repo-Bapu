trigger AccountTrigger on Account (before update) {
   
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountTriggerHandlerClassOctober.checkAccountUpdate(Trigger.new, Trigger.oldMap);
    }
    
    /*if(Trigger.isInsert && Trigger.isBefore){
        
        //AccountClassToCheckNoOfContacts.noOfContactRecordsUpdateOnAccount(Trigger.New);
       // AccountTriggerHandler.handleBeforeUpdateActivites(Trigger.New,Trigger.OldMap);       
     
        AccountTriggerHandlerClassSanjay.demoAccountDescriptionUpdate(Trigger.New);
    }*/
}