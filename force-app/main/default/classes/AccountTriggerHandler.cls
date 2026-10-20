public class AccountTriggerHandler {

    public static void handleBeforeUpdateActivites(List<Account> newRecords,Map<Id, Account> oldRecords){
     // when the account Indusctry Agriculture and Type = Prospect, dont allow users to set the Ownership to Private
        for(Account accRecords : newRecords){
            if(accRecords.industry =='Agriculture' && accRecords.Type =='Prospect'){
                if(oldRecords.get(accRecords.Id).OwnerShip != accRecords.OwnerShip && accRecords.ownerShip== 'Private'){
                    // throw the error on the account screen
                    accRecords.addError('Ownership cant be changed : Field - Ownership');
                }              
                
            }    
             
        }
                
    }
}