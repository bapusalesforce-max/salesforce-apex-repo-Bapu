public class ApexUseCaseNine {

    // write a method to check the genereation type 
    // Generation Y (Millennials)Birth Years: 1981 to 1996.  Generation ZBirth Years: 1997 to 2012.  Generation AlphaBirth Years: 2013 to mid-2020s (approx. 2025).
    
    public static String checkGenerationType(Integer dateOfBirth){
        
        String genType = '';
        
        if(dateOfBirth !=null){
            
            	if(dateOfBirth > 1981 && dateOfBirth<= 1996){
                    
                    genType = 'Millennials';
                    
                }else if(dateOfBirth> 1997 && dateOfBirth <= 2012){
                    
                    genType = 'Gen Z';
                
                }else if(dateOfBirth> 2013 && dateOfBirth<=2025) {
                    genType = 'Gen Alpha';
                    
                }
 
        }
         
        return genType;
    }
}