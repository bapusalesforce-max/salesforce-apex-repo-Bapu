public class BasicUseCasesInApex {
    
   public static string correctPassword = 'Salesforce_Makes_Sense'; 
    
    public static string passwordAttempts(String passWordInput){
        if(passWordInput != correctPassword){
            
            return 'Failure';
            
        }else {
            return 'Success';
        }
                         
        
    }
    
    
}