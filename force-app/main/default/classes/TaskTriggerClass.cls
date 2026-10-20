public class TaskTriggerClass {

    public static void taskupdate(List<Task> taskList ){
        
       // List<Task> newTask = new List<Task>();
        
        for(Task taskRecord : taskList){
            taskRecord.Priority = 'Low';
               
          //  newTask.add(taskRecord);
        }    
    }
}