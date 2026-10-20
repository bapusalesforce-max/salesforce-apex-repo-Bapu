public class QueueableClassOnAccount implements Queueable {
    
    // we are defining the acclist variable
    
    private List<Account> accList;
    private Id parentAccId;
    
    // we need to initialize the variable here so use constructor
    
    public QueueableClassOnAccount(List<Account> accRecords, Id idRecord){
        this.accList=accRecords;
        this.parentAccId = idRecord;
    }

    // to use queueable apex need to implement Queueale 
    
    public void execute(QueueableContext qc){
        
        List<Account> accRecordsToUpdate = new List<Account>();
        // here we to iterate the account list
        
        for(Account acc : accList){
            acc.ParentId = parentAccId;
        	accRecordsToUpdate.add(acc);    
        }
        if(!accRecordsToUpdate.isEmpty()){
            update accRecordsToUpdate;
        }
    }
}