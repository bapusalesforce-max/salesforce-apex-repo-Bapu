public class LeadTriggerHandler2 {

    public static void taskRecordNeedToCreate(List<Lead> leadList){
       List<Task> taskRecordtoInsert = new List<Task>(); 
       
        for(Lead l : leadList){
            
            Task taskRecord = new Task();
            taskRecord.WhoId = l.Id;
            taskRecord.OwnerId= l.OwnerId;
            taskRecord.Priority = 'High';
            taskRecord.Subject = 'Followup';
            taskRecordtoInsert.add(taskRecord);
        }
        
        if(!taskRecordtoInsert.isEmpty()){
            insert taskRecordtoInsert;
            
        }
    }
}