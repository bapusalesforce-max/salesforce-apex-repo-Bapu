public class TaskCreationWithoutTriggerContact {

    // insert a Task associated to the contact
    
    public static void contactRecordToCreate(String accountId){
        List<Contact> conList= new List<Contact>{new Contact(LastName='xyz', AccountID=accountId)};
        
            try{
                insert conList;
            }Catch(Exception e){
                System.debug('Here is the error===> ' + e.getMessage() +'______'+e.getLineNumber()+'_____'+e.getCause()+ '_____' +e.getStackTraceString());
            }
        List<Task> taskRecordListToInsert = new List<Task>();
        for(Contact con :conList){
            Task taskRecord = new Task();
        	taskRecord.WhoId = con.Id;
            taskRecord.Subject = 'Follow Up Immediately';
            taskRecord.Priority = 'High';
            taskRecordListToInsert.add(taskRecord);
        }
        
        try{
             insert taskRecordListToInsert;
        }Catch(Exception e){
            	System.debug('Here is the list size' + taskRecordListToInsert.size());
                System.debug('Here is the error===> ' + e.getMessage() +'______'+e.getLineNumber()+'_____'+e.getCause()+ '_____' +e.getStackTraceString());
            }
       
    }
   
}