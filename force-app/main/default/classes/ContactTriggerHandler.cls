public class ContactTriggerHandler {

    public static void handleBeforeInsert(List<Contact> newRecords){
       // when the Contact record is created without the account ID please thrown and error, this can be done through the validation rule as well;
        for(Contact conRecords : newRecords){
            if(conRecords.AccountId == null){
                // Throw an error on the screen , this can be done by method , addError()
                conRecords.addError('Please make sure to select the AccountID;related to the contact');
                
            }          
        }
    }
}