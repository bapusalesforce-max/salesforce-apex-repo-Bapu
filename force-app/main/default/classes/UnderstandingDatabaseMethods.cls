public class UnderstandingDatabaseMethods {

    public static void updateContataRecords(Id accIds){
        if(accIds != null){
             List<Account> accList = [SELECT Id, Type, Industry FROM Account WHERE Id = :accIds];
            if(accList.size() > 0){
                if(accList[0].Type == 'Customer - Channel'){
                    accList[0].Industry = 'Energy';
        	    }
        	 update accList;
            }
             
        } 
    }
}