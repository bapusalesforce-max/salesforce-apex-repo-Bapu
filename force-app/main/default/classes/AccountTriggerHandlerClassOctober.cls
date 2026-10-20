public class AccountTriggerHandlerClassOctober {

    public static void checkAccountUpdate(List<Account> accRecords, Map<Id, Account> oldMapAccRecord){
        
        for(Account acc : accRecords){
            if(acc.Industry == 'Agriculture' && acc.Type =='Prospect'){
                if(oldMapAccRecord.get(acc.Id).OwnerShip != acc.Ownership || acc.Ownership=='Private'){
                    // thrown an error
                    acc.addError('You cant change the Ownership for the Account');
                }
            }
        }
    }
}