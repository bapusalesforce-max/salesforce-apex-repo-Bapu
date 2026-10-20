public class MapDemoClass {

    public static Map<String,List<Opportunity>> populateAMapUnderstanding(){
        // how to declare the Map to store the values here 
    	// key --- is the form of string && value is in the form of List<Opportunity>
        
        Map<String,List<Opportunity>> stageBaseOppMap = new Map<String,List<Opportunity>>();
        // next step to query and get the list of opportunity records 
        
        List<Opportunity> oppRecordsList = [SELECT Id,Name,StageName FROM Opportunity LIMIT 10];
        // after the records we receivce in bulk always remeber to iterate for the list to check for one by one here ;
    
        for(Opportunity opp : oppRecordsList){
            if(stageBaseOppMap.containsKey(opp.StageName)){
               List<Opportunity> currentOppList = stageBaseOppMap.get(opp.StageName);
                currentOppList.add(opp);
                System.debug(currentOppList);
                stageBaseOppMap.put(opp.StageName , currentOppList);
            }else{
                List<Opportunity> oppRecords = new List<Opportunity>();
                oppRecords.add(opp);
                stageBaseOppMap.put(opp.StageName,oppRecords);
                System.debug('First time stageName entering here :' + stageBaseOppMap.put(opp.StageName,oppRecords));
            }
        }
        
        Map<String,String> flowersMap = new Map<String,String>();

		Map<String,String> flowersMap2 = new Map<String,String>{
    
};
        
        return stageBaseOppMap;
    }
}