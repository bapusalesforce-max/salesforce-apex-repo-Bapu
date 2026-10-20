public class ApexUseCaseOne {
 	
    // write a method which exceptes the first name , lastname and email id of a person and create a contact record in system
    // pass the lastname and first name && email id as method parameteres , here 
    
    public static void createContactRecord(String firstName , String lastName , String emailId ){
        
        List<Contact> conListToInsert = new List<Contact>();
        // to creat a contact record , first create the object to hold the values
        // and check wthere the mandatory field is passed in the params 
       
             Contact con = new Contact();
             con.LastName = lastName;
             con.FirstName = firstName;
             con.Email = emailId;
             conListToInsert.add(con);
        
 
        // need to insert the record, as a best practicse create a list 
        //before insert the list check whethere list is empty or not then perform the dml operations;
       
        try{
            if(conListToInsert.size() > 0){
               
            insert conListToInsert;
            }    
            
        }Catch(Exception e){
            System.debug('Here is the issue===>>' + '________' +e.getMessage()+'______'+e.getCause()+ '________' +e.getLineNumber());
        }
        
    }
        
        
}