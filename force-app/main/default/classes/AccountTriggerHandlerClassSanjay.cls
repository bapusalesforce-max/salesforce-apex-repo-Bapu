public class AccountTriggerHandlerClassSanjay {
    
    public static void demoAccountDescriptionUpdate(List<Account> accList){
        
        for(Account acc : accList){
            acc.Description = 'Testing purpose';
        }
    }
}