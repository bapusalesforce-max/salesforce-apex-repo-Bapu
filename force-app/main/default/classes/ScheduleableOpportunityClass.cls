public class ScheduleableOpportunityClass implements Schedulable{
    // here the scheduleable class , interface use execute method
    
      // we can write the businesss logic here
      
    public static void execute(SchedulableContext sc){
        
      	List<Opportunity> oppRecordsToUpdate = new List<Opportunity>();
        List<Opportunity> oppList = [SELECT Id, Name, Type, LeadSource FROM Opportunity WHERE LeadSource = 'External Referral'];
        
        	// we want to change anything always need to iterate the list, collection
      		
        for(Opportunity opp : oppList){
            opp.leadSource = 'Web';
            oppRecordsToUpdate.add(opp);
        }
        
        if(!oppRecordsToUpdate.isEmpty() && oppRecordsToUpdate!=null){
            
            update oppRecordsToUpdate;
            
        }
    }

}