public class ContactTriggerHandlerClassNewOctober {
    
    public static void createContact(List<Contact> newRecords){
        for(Contact conRecords : newRecords){
            if(conRecords.AccountId==null){
                // thrown an error message on the front screen by addError method 
                conRecords.addError('Please enter the Account before inserting the contact');
            }
        }   
    }
}