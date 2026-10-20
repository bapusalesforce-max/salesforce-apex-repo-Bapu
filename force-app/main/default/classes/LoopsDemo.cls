public class LoopsDemo {
    
    public static void loopDemoWithIfElseLadder(Integer num){
        if(num > 0){
            System.debug('Number entered is Positive');
        }else if(num == 0){
            System.debug('Number entered is Negative');
        }else if(num < 0 ){
            System.debug('Number entered is Negative');
        }else{
            System.debug('Number entered is Decimal');
        }
        
    }
    
    public static void loopDemoWithNestedIf(Integer num){
        
        if(num >=0){
            if(num > 0 ){
                System.debug('Number entered is Positive');
            }else{
                System.debug('Number is Zero');
            }
        }else{
            System.debug('Number is Negative');
        }
     
        
        
    }
}