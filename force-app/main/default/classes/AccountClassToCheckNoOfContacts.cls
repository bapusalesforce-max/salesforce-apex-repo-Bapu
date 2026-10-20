public class AccountClassToCheckNoOfContacts {

    // write a class to check no of related contacts for the account and display on the account page;
    
    // so first write a method 
    // so here we are using the furture asynchoronous apex, so use @future anotation , so we need to pass the method params as ids, it might be primitive or collection data types only;
    
    @future
    public static void noOfRelatedContactRecords(List<Id> accIds){
        
        List<Account> accList = [SELECT Id, Name,(SELECT Id, LastName FROM Contacts) FROM Account WHERE Id=: accIds];
        
        for(Account acc : accList){
            acc.No_Of_Contacts__c = acc.contacts.size();
        }
        
        if(!accList.isEmpty()){
        	
            update accList;    
        }
        
    }
    
    public static void noOfContactRecordsUpdateOnAccount(List<Account> accList){
        
        
    }
}