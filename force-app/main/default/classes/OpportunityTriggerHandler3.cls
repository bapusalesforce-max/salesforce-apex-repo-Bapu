public class OpportunityTriggerHandler3{
    
    public static void updateOppRecordAmount(List<Opportunity> NewRecords, Map<Id,Opportunity> oldRecord){
        // need to check whether the opportunity stage is modified then make the changes on the amount field by calculating 2 field;
        // List<Opportunity> NewRecords ===> Trigger.NEW
        // Map<Id,Opportunity> oldRecord === > Trigger.OldMap with (Key,value)pair here key--- ID && Value is entire Opportunity records
        // before so no need to do the DML operation 
        for (Opportunity OppNewRecords: NewRecords){
            if(oldRecord.get(OppNewRecords.id).stagename != OppNewRecords.stagename){
                OppNewRecords.Amount = OppNewRecords.Probability* OppNewRecords.ExpectedRevenue;
                System.debug('Finally the amount value is update==>' + OppNewRecords.Amount);
            }
        }
    }
}