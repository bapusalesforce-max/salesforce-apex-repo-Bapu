public class ApexUseCaseTwelve {

    // write a method to check the last 5 created tasks today
    
    public static List<Task> lastFiveCreatedTask(){
        
        List<Task> taskList = new List<Task>();
        
        taskList =[SELECT Id,Subject FROM Task WHERE CreatedDate = Today ORDER BY CreatedDate LIMIT 5];
        
        return taskList;
         
        
    }
    
    // List<Task> finalPrint = ApexUseCaseTwelve.lastFiveCreatedTask2();
    // System.debug(finalPrint);  
    
    public Static List<Task> lastFiveCreatedTask2(){
        
        return [SELECT Id,Subject FROM Task WHERE CreatedDate = today ORDER BY CreatedDate LIMIT 5];
    }
}