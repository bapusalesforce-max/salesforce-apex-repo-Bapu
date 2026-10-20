public class TestClassForReturnTesting {

    // write a method to test the return method testing

    public static List<Account> accountCreated(){
        
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 1];
        
        //System.debug(accList);
        
        return accList;
    }

}