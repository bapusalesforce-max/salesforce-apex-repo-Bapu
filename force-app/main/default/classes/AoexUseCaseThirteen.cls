public class AoexUseCaseThirteen {

    // write a method that extracts the first name and last name from the email address passed as in the method;
    
    //System.debug(AoexUseCaseThirteen.fulldisplayName('bapu-patil@gamil.com')); 
    
    public static String fulldisplayName(String emailAddress){
        
       //	String fullName = '';
        	String extractednames = emailAddress.subStringBefore('@');
        
        /*	if(!String.isBlank(extractednames)){
            if(extractednames.contains('-')){
                
            	fullname = extractednames.replace('-','  ');
            
        		}
    		}*/
        
    		return extractednames;
	}
    
}