public with sharing class CollectionsClassPracticse {
    
    // create a list to store all the names from the account

    public static void useCaseOne(){
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name!= null ];
        List<String> accountNames = new List<String>();
        for(Account acc : accList){
            accountNames.add(acc.Name);
        }
        System.debug(accountNames.Size());
        System.debug(accountNames);
    }

    //Query emails from the contact and add it to the Set to get the unique

    public static void useCaseTwo(){
        // we can reduce the Heap Size 
        //List<Contact> conList = [SELECT Id,LastName,Email FROM Contact WHERE Email!= null];
        Set<String> emailAddress = new Set<String>();
        for(Contact con: [SELECT Id,LastName,Email FROM Contact WHERE Email!= null]){
            emailAddress.add(con.Email);
        }
        System.debug(emailAddress.size());
        System.debug(emailAddress);        
    }

    // Create a list to hold all the opportunity to hold the amount where the stage is not Closed WON and Closed Lost

    public static void useCaseThree(){
        List<Decimal> oppAmountList = new List<Decimal>();
        List<Opportunity> oppList= [SELECT Id, Amount, StageName FROM Opportunity WHERE StageName NOT IN('Closed WON','Closed Lost') ];
        for(Opportunity opp : oppList){
            oppAmountList.add(opp.Amount);
        }
        System.debug(oppAmountList.size());
        System.debug(oppAmountList);
    }

    // Query and get all the account Ids associated with the contact

    public static void useCaseFour(){
        List<Contact> conList = [SELECT Id,AccountId,LastName FROM Contact WHERE AccountId != null];
        Set<Id> accountIdsList = new Set<Id>();

        for (Contact con : conList){
            accountIdsList.add(con.AccountId);
        }

        System.debug(accountIdsList.size());
        System.debug(accountIdsList);
    }
    // this is case Five
    public static void useCaseFive(){
        List<String> leadNamesList = new List<String>();

        for(Lead ln : [SELECT Id, Name FROM Lead WHERE Name != null AND LeadSource='Web ']){
            leadNamesList.add(ln.Name);
        }
        System.debug(leadNamesList);
    }
  	
    public static void useCaseNine(){
       
        List<Lead> idList = [SELECT Id,CreatedDate FROM Lead ORDER BY CreatedDate DESC LIMIT 5]; 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
 
}