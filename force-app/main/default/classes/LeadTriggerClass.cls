public class LeadTriggerClass {

    public static void leadUpdate(List<Lead> leadList ){
        
        for(Lead l : leadList ){
            l.status = 'Working - Contacted';
        }
    }
}