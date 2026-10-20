public class ApexUseCaseEight {

    // check the number divisible by 7 and 11
    
    public static Boolean divisibleBySevenAndEleven(Integer numberToCheck){
    	  
        if(math.mod(numberToCheck , 7) == 0 && math.mod(numberToCheck , 11) == 0 ){
            return true;
            
        }else{
            
            return false;
        }
  
    }
        
}