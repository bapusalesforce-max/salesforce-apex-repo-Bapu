trigger TaskTriggerHandler on Task (before insert, before update) {
    
    // when the task is create we need to set the priority to High;
    
    if(Trigger.isBefore){
           if(Trigger.isInsert){
        
        for(Task taskRecord : Trigger.new){
            if(taskRecord.subject=='Call'){
                 taskRecord.priority='High';
            }
           
        }
        
    }else if(Trigger.isUpdate){
        for(Task taskRecordUpdate :Trigger.new){
            taskRecordUpdate.priority = 'Normal';
        }
    }
    }
 
    
    
    
    
    
    
    
    /* when the Task is created please change the priority to High

if(Trigger.isBefore){

if(Trigger.isInsert || Trigger.isUpdate){

TaskTriggerClass.taskupdate(Trigger.NEW); 
}

}*/
}