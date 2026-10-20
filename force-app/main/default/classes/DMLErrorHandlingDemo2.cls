public class DMLErrorHandlingDemo2 {
    public static void handleError2(){
        List<Contact> conList = new List<Contact>{
              new Contact(FirstName = 'NotValid2'),
              new Contact(LastName ='Valid2' )    
        };
            
        Database.SaveResult[] results2 = Database.insert(conList,false);
        for(Database.Saveresult sr : results2){
            if(sr.isSuccess()){
            	System.debug('Here is the success case with Id ===>' + sr.getId());
                
            }else{
                for(Database.Error err : sr.getErrors()) {
                    System.debug ('Here is the error, please check ===>' + err.getStatusCode() + '&&&&' + err.getMessage());     
               }
            }    
        }
    }    
}