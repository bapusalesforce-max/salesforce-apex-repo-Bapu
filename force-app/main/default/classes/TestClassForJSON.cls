public class TestClassForJSON {

    public static String jsonTesing(){
        
            List<Account> accountList = [SELECT Id, Name, Industry FROM Account LIMIT 2];
        
        	//System.debug(accountList);

            // Convert the list of sObjects to a JSON string
            String jsonAccounts = JSON.serialize(accountList);
            
        	System.debug(accountList);
        	return jsonAccounts;
            
            // Output: [{"attributes":{"type":"Account","url":"..."},"Id":"001...","Name":"Acme Corp","Industry":"Technology"}, ...]
        
        
    }

    
}