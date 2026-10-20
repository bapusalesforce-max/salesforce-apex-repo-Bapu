public class CaseTriggerHandlerClass {

    public static void caseUpdate(List<Case> caseList){
        
        for (Case c : caseList){
            if(c.Origin=='Phone'){
                c.Priority = 'High';
            }if(c.Origin =='Web'){
                c.Priority='Medium';
            }else {
                c.Priority='Low';
            }
        }
    }
}