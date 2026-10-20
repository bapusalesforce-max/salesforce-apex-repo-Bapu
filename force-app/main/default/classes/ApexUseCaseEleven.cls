public class ApexUseCaseEleven {
    
    // write a method when user pass the arconym then give the full name;

    // here we have made use of custom settings 
    
    public static String fullform(String acronym){
        
        List<Master_Acronym__c> masterAcronym = [SELECT Id, Name, Full_Version__c FROM Master_Acronym__c WHERE Name = :acronym LIMIT 1];
        
        if(masterAcronym.size() == 1){
            
            return masterAcronym[0].Full_Version__c;
        }
        
        return 'Not Specified';
    }
}


// System.debug(ApexUseCaseEleven.fullform('BR'));