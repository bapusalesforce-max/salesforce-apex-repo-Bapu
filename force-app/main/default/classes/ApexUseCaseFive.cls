public class ApexUseCaseFive {

    // pass the account name and contact name as the parameters and then check for the both the combo whthere the record exist or not;
    
    public static Boolean accountContactComboRecord(String accName, String conName){
	
        // List<Boolean> existRecord = new List<Boolean>{true,false};
 		
        if(!String.isBlank(accName) && !String.isBlank(conName)){
                 
            List<Contact> conList = [SELECT id,name,Account.Name FROM Contact WHERE (Account.Name =:accName AND Lastname =:conName)];
       
        	if(conList.size() > 0){
            
            	return true;
        	}
  
        }
        
        return false;
      
    }
 
}