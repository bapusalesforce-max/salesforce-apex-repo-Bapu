public class DMLErrorHandlingDemo {
    public static void handleErrors(){
        List<Contact> conList =new List<Contact>{
            new Contact(FirstName='not valid'), // not valid case
            new Contact(LastName= 'Valid')   
            };    
        
       Database.SaveResult[] results = Database.insert(conList,False);
        for(Database.saveResult sr : results){
            if(!sr.isSuccess()){
                for(Database.Error err : sr.getErrors()){
                    System.debug('Here is the error,please check====>' + err.getStatusCode() +':' + err.getMessage());
                } 
                
            }       
        }
                
    }

}