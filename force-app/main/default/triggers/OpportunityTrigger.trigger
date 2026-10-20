trigger OpportunityTrigger on Opportunity (after update) {
    if(Trigger.isUpdate && Trigger.isAfter){
        OpportunityTriggerHandlerNew.createTaskforOpportunity(Trigger.new, Trigger.oldMap);
    } 
}