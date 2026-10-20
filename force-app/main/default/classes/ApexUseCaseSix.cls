public class ApexUseCaseSix {
 
  // write a method that checks whether a person can vote or not based on there age;   
  // if age is more than 18 he can vote and less than 18 he cant vote  
  // here the params should be age passing in the method integer data type and return nothing here , so void
   
    public static void checkPersonCanVote(Integer personAge){
        
        
        if(personAge >= 18){
            
            System.debug('The person is eligible to Vote');
        
        }else {
            
            System.debug('The person is not eligible to Vote');
        }
        
    }
  
    // second method what if the user pass only DOB , then need to calculate the years
    public static Boolean checkVotingRights(Date dateOfBirth){
     
        Date todaysDate = System.today();
      	
        Integer approxPersonAge = (dateOfBirth.daysBetween(todaysDate))/365;
    
        if(approxPersonAge >= 18){
            
            return true;
            
        }else{
            return false;
        }
 
   }
}