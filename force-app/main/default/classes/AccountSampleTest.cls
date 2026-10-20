public class AccountSampleTest {
    
    // testing for the try catch block for the DML and Database methods

    public static void dmlMethod(){
        
        Account acc = new Account(Rating='Hot');
        
        
        try{
        	
            Database.insert(acc, true);
            
        }Catch(DMLException e){
            System.debug('Here is the error===> ' + e.getMessage());
            
        } Catch(Exception e){
            System.debug('Here is the error===> ' + e.getMessage());
            
        }  
    }
 
    
    public static void dmlUpsertMethod(){
        
        // the requiremnet here is insert a new account record and update an existing account record at the same time;
         List<Account> accListToUpdate = new List<Account>();
        	Account acc1 = new Account(Name = 'abc9');
            
            List <Account> accList1 = [SELECT id,name FROM Account WHERE Name='xyz'];
        	
        	for (Account acc :accList1){
                acc.Rating = 'Hot';
                
                accListToUpdate.add(acc);
        }
        
       		accListToUpdate.add(acc1);
        
        try{
            if(accListToUpdate.size() > 0 ){
               
                upsert accListToUpdate; 
            }

        } Catch (Exception e){
            
            System.debug('Here is the erro====>' + e.getMessage());
        }
            
    }


    public static void dmlDeleteMethod(){
        
        List<Opportunity> oppList = [SELECT id,name,stagename FROM Opportunity WHERE stagename= 'Id. Decision Makers'];
        
        try{
            
            if(oppList.size()> 0 ){
                
                delete oppList;
            }
            
            
        }Catch(Exception e){
            
            System.debug('Here is the error===>' + e.getMessage() + '_______' + e.getCause());
        }
        
        
    }

    
    public static void dmlUndeleteMethod(){
        
      List<Opportunity> oppList2 = [SELECT Id, Name, StageName FROM Opportunity  WHERE StageName = 'Id. Decision Makers' AND IsDeleted = TRUE ALL ROWS];
        
        System.debug(oppList2);
 
        try{
            if(oppList2.size() > 0 ){
                
                 undelete oppList2;
            }     
           
        }Catch(Exception e){
            
              System.debug('Here is the error===>'+ e.getStackTraceString() + '__________' + e.getLineNumber());
        }
        
    }
        
	}