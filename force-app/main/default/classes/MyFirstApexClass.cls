public with sharing class MyFirstApexClass {
   
    public static void MyFirstApexClass(){
        
        System.debug('Hello World, Trailhead! ');

    }   

    public static void MyFirstMethod() {
        
        List<Account> accList = new List<Account>();
        accList = [SELECT Id, Name FROM Account LIMIT 1];
        
        System.debug('This is my first method!'+ accList);
    }

    public static void MySecondMethod() {
        
        Account acc = new Account(Name = 'xyz');

        Account acc2 = new Account(Name = 'abc');

        List<Account> accList = new List<Account>{acc, acc2};

        System.debug('This is my second method!'+ accList);
    }
}