public class CaseWithoutTrigger {

    // update a case to mark it as close
	
    public static void updatCaseToMarkClose(){
        
        List<Case> caseListToInsert = new List<Case>();
        List<Case> caseList = [SELECT id,status FROM Case WHERE status ='New'];
       
        for (Case caseRecord : caseList){
            
            caseRecord.status = 'Closed';
            caseListToInsert.add(caseRecord);
        }
        
        try{
             update caseListToInsert;
        }Catch(Exception e){
            
            System.debug('Here is the error====>'+ e.getMessage() + '______' + e.getCause());
            
        }
       
    }

}