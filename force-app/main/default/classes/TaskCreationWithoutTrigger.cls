public class TaskCreationWithoutTrigger {

    public static void createAccountRecords(){
        //used the collection initializer to define the records here; 
        
        List<Account> accList = new List<Account>{
            new Account(Name='abc9'),
            new Account(Name='')    
        };
            
            try{
                insert accList;
            }Catch(Exception e){
                System.debug('Newly created accounts===> '  + accList);
                System.debug('Here is the error===>' +e.getMessage() + '---- ' + e.getCause()+'---' +e.getLineNumber());
            }
        
        // befor creating an record , first create the object for the same to hold the value ;
        
        // create a list to hold the list to task records ;
        
        List<Task> taskRecordToInsert = new List<Task>();
        // dont forget to enter the mandatory fields when you try to create a record ;
           
        for (Account acc : accList){
            if(accList.size() > 0){
             Task taskRecord = new Task(Subject = 'Follow Up Immediately',Priority = 'High',Status = 'Not Started',WhatId = acc.Id);
            
             taskRecordToInsert.add(taskRecord);
                      
            }
            
        }
              
     	Database.insert(taskRecordToInsert,false);
    }
}