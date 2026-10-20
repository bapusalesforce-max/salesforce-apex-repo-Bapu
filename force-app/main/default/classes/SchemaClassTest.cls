public class SchemaClassTest {

    public static void schemaObjectInfo(){
        
        
    Map<String, Schema.SObjectType> globalDescribe = Schema.getGlobalDescribe();
        
       
      System.debug(globalDescribe.KeySet());
       
    }
    
}