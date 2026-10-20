public class BatchClassOnOpportunity implements Database.Batchable<sObject>{
    
    // when you define the batch Database.Batchable , then need to override three method 
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        String stdQuery = 'SELECT Id, Name FROM Opportunity ';
        String filterQuery = 'WHERE LeadSource = \'Partner\'';
        String finalQuery = stdQuery + filterQuery;
        return Database.getQueryLocator(finalQuery);
        
    }
    
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        
        for(Opportunity opp : scope){
            opp.LeadSource = 'web';
        }
        
        if(!scope.isEmpty()){
        	update scope;    
        }
        
    }
    
    public void finish(Database.BatchableContext bc){
        
        System.debug('Final method executed');
        
    }
}