public class FindtheLargestNumber {
    // user has provided the list of number 10, 20 ,30, 100 , 3500 ;
    
    public static void findTheLargestNumberfromTheList(){
        //to hold the number use list
        List<Integer> numberList = new List<Integer>{
            10, 20 ,30, 100 , 3500
                };  // this is collection initializer 
                    
                    Integer largestNumber = numberList[0];
        
        for(Integer num : numberList){  // num will have one by one from the numberList values like first 10 ;; second 20 ;; third 30 ;; fourth 100 ;;  fifth 3500 
            if(num > largestNumber){   // largestnumber will be same here always as above in the line 10 we have defined as numberList[0] means firstvalue which is 10
                //System.debug(largestNumber);
                largestNumber = num; 
                System.debug(largestNumber);
            }                       
        }  
        System.debug('Here is the largest number:'+ largestNumber);
    }
}