public with sharing class OpportunityTriggerHandler {
    // write a method when the stage is modified the update the amount based on the probabality and reveneue
    // check if both retrived 

    public static void handleActivitesBeforUpdate(List<Opportunity> newRecords, Map<Id, Opportunity> oldRecords){

        	for(Opportunity newopp : newRecords){
            
            	Opportunity oldOpp = oldRecords.get(newOpp.Id);
            
            		if(oldOpp.StageName != newOpp.StageName){
                
                			if(newOpp.ExpectedRevenue !=null && newOpp.Probability != null ){
                   				newopp.Amount = newopp.Probability * newopp.ExpectedRevenue; 
                			}
          
            		}

	        }
    }
}