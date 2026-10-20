public class MapCollectionWithMethods {

    /* Methods name
    	put / get / size / containsKey / isEmpty/  keyset / values / remove / clone / clear / */
    	
    /* put --- use to put the value along with the key --- value pair
     * 
     * get--- use to get the value by passing the key
     * 
     * size --- use to check the map size
     * 
     * containsKey--- check if the passed key is there or not and its a boolean return type
     * 
     * isEmpty --- check whether the map is empty or not
     * 
     * keyset ---- returns the key records details */
     
    public static void mapMethods(){
        Map<String, String> mapKeyValue = new Map<String, String>();
    		mapKeyValue.put ('A','Apple');
    		mapKeyValue.put ('B','Bus');
    
    		System.debug('Get the value for key a=======> ' + mapKeyValue.get('A') + 'Get the value for key b=======>  '+mapkeyValue.get('B'));
        	Integer sizeOfMap = mapKeyValue.size();
        	System.debug('Map size ======>' + sizeOfMap);
        	System.debug('Map size ======>' + mapKeyValue.size());
        	System.debug(mapkeyvalue.keySet());
        	System.debug(mapkeyvalue.values());
        	System.debug(mapkeyvalue.containsKey('A'));
        	System.debug(mapkeyValue.remove('B'));
     		System.debug(mapkeyvalue);
        	Boolean mapIsEmpty = mapkeyvalue.isEmpty();
        	System.debug('Is map empry====> '+ mapIsEmpty);
        	System.debug(mapKeyValue);
        	mapkeyvalue.clear();
        	System.debug(mapKeyValue);

        // Basic declaration with no values
        
        Map<String,String> mapRecords = new Map<String,String>();
        mapRecords.put('a','apple');
        mapRecords.put('b','bus');
        
        System.debug(mapRecords);
        
        // Basic declaration with values;
        
        Map<String,String> mapRecordsList = new Map<String,String>{
          'a'=>'apple',
          'b'=>'bus',
          'c'=>'car'   
        };
      
        // Declaration with SOQL query
        
        Map<Id,Opportunity> oppRecordsMap = new Map<Id,Opportunity>([SELECT Id FROM Opportunity]);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
}