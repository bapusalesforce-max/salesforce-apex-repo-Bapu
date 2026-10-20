public class UnderstandingDatabaseMethods2 {

    public static void createAccountRecords(){
     
        Account acc1 = new Account();
        acc1.name = 'ABC';
        
        Account acc2 = new Account();
        acc2.name = 'XYZ';
        
        List<Account> accList = new List<Account>();
        accList.add(acc1);
        accList.add(acc2);
        
        insert accList;       
        
    }
    
    public static void createdAccountRecords2(){
        
        Account acc1 = new Account(Name = 'xyz',Rating='Hot');
        Account acc2 = new Account(Name='abc',Rating = 'Warm');
        
        List<Account> accList = new List<Account>{acc1,acc2};
            
            insert accList;
    }
    
    public static void createAccountRecords3(){
        
        List<Account> accList = new List<Account>{
            
            new Account(Name='LMN',Rating='Hot'),new Account(Rating='Hot')
        };
          
        Database.SaveResult[] results =  Database.insert(accList,false);
        
        for (Database.SaveResult sr : results){
            if(sr.isSuccess()){
                System.debug('Successfully created records' + sr.getId());
            }else {
             
                for(Database.Error err : sr.getErrors()){
                    
                    System.debug('These are the filed records'+ err.getMessage() + '  ' + err.getStatusCode());
                }
             }
            
        }
        
    }
    
    public static void createAccountRecord4(){
        
        List<Account> accList = new List<Account>{new Account(Name='mno',Rating ='Hot'),new Account(Rating='Hot')};
        
            try{
                insert accList;
            } Catch(DMLException e){
                
                System.debug('Here is the error'+ ' Gap ' + ' Gap '+ e.getMessage());
                
            }    
    }
    
    public static void caseRecordsToUpdate(String caseStatus){
        
        List<Case> caseRecToUpdate = new List<Case>();
        List<Case> caseList = [SELECT Id, CaseNumber, Status FROM Case WHERE Status = :caseStatus];
        for(Case caseRec:caseList){
            caseRec.Status ='Closed';
            caseRecToUpdate.add(caseRec);
        }
            
        try{
             update caseRecToUpdate;
            
        }Catch(Exception e) {
            
            System.debug(e.getMessage()+ ' Second error '+ e.getCause()+ ' Third Error '+ e.getLineNumber());
         }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}