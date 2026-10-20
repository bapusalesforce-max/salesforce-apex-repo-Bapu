public class ApexUseCaseEighteen {
    
    // write a method to check the accounts and contact records which are created in the last 24 hours

    public static List<Object> accAndConRecordsCreated(){
        
        	List<Object> objList = new List<Object>();
        
        	List<Account> accList = [SELECT Id, name FROM Account ORDER BY CreatedDate DESC LIMIT 10];
        	
        	List<Contact> conList = [SELECT id, name FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
        
        if(accList.size() > 0){
            objList.addAll(accList);
            
            System.debug('Here is the accList  '+ accList.size());
        	
        }
        	
        if(conList.Size() > 0){
            objList.addAll(conList);
            System.debug('Here is the size of the contactList  '+ conList.size());
        }
        
        System.debug(objList.size());
        return objList;
        
    }
}