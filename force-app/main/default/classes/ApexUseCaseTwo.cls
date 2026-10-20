public class ApexUseCaseTwo {

    // calculate the simple interest , pass the principal, interest, years;
    
    public static Decimal calculator(Decimal principal , Decimal interest , Decimal noOfYears){
       
        if(principal != null && interest != null && noOfYears != null){
            
             Decimal simpleInterest = (principal*interest*noOfYears)/100;
        	 return simpleInterest;

        } 
        
         return 0;
 
    }
}