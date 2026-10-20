public class NamePrintClass {
    
    String showname; 									// if we define the variable at class level is called as instance variable 
    static String name;   // instance varibale as well as Static variable static variable can be used in non-static method ; but only static variable can be used in static method 
    
    public NamePrintClass(String showname){
        this.showname = showname;
    }
    
    public void printName(String fullName){ 		   //here the method is not-static so to execute creat an instance of the class ; object creation to access the method 
        name = fullName;  					 
        System.debug('My name is ===>' + name);
        
    }
    
    public static void printNameStaticMethod(String namedisplay){  // method parameter 
        
        System.debug('Here is the name==>'+ namedisplay);
    }
    
    public static void printNameNonStaticMethod(){
        
        String nameprint = 'Bapu Patil - Salesforce';   // local variable ;;      this is local variable accessible withing this method 
        System.debug('Here is the name===>'+ nameprint);
        
    }
}