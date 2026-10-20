public class ApexUseCaseSeven {

    // write a method to split the bill amoungst the people
    
    public static Decimal splitBill(Decimal bill , Integer noOfPeople){
        
        Decimal splitBillPerson = bill/noOfPeople;
       
        System.debug('Here is the splitbill amount==== > ' +splitBillPerson );
        
        if(bill !=null && noOfPeople > 0){
            
             return splitBillPerson;
            
        }else {
            
             return 0;
        }
        
    }
}