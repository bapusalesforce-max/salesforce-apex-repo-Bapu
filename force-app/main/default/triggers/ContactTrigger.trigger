trigger ContactTrigger on Contact (before insert,after insert,before update,after update,before delete,after undelete) {

    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHandlerClassNewOctober.createContact(Trigger.new);
    }
    
    /*if(Trigger.isBefore && Trigger.isInsert){
        System.debug(Trigger.new); // insert new version but id not populated here
        System.debug(Trigger.newMap); // insert no id so null 
        System.debug(Trigger.old); // null
        System.debug(Trigger.oldMap); //null
    }
      if(Trigger.isAfter && Trigger.isInsert){
        System.debug(Trigger.new);  // insert new version with id populated
        System.debug(Trigger.newMap); // insert key -- id and value--complete record 
        System.debug(Trigger.old);  // insert so null
        System.debug(Trigger.oldMap); // insert so null
    }
    
        if(Trigger.isBefore && Trigger.isUpdate){
        System.debug(Trigger.new);  //  new version with id populated
        System.debug(Trigger.newMap); //  key -- id and value--complete record 
        System.debug(Trigger.old);  //  older version with id populated
        System.debug(Trigger.oldMap); //  older version with key-id and value -- complete record
    }
    
        if(Trigger.isAfter && Trigger.isUpdate){
        System.debug(Trigger.new);  //  new version with id populated
        System.debug(Trigger.newMap); //  key -- id and value--complete record 
        System.debug(Trigger.old);  //  older version with id populated
        System.debug(Trigger.oldMap); //  older version with key-id and value -- complete record
    }
    
        if(Trigger.isBefore && Trigger.isDelete){
        System.debug(Trigger.new);  //  null
        System.debug(Trigger.newMap); //  null 
        System.debug(Trigger.old);  //  older version with id populated
        System.debug(Trigger.oldMap); //  older version with key-id and value -- complete record
    }
    
        if(Trigger.isAfter && Trigger.isDelete){
        System.debug(Trigger.new);  //  null
        System.debug(Trigger.newMap); //  null 
        System.debug(Trigger.old);  //  older version with id populated
        System.debug(Trigger.oldMap); //  older version with key-id and value -- complete record
    }
       
    	if(Trigger.isAfter && Trigger.isUnDelete){
        System.debug(Trigger.new);  //  new version with id populated
        System.debug(Trigger.newMap); //  new version key -- id and value --complete record 
        System.debug(Trigger.old);  //  null
        System.debug(Trigger.oldMap); //  null
    }
    
    /*if(Trigger.isInsert && Trigger.isBefore){
        ContactTriggerHandler.handleBeforeInsert(Trigger.New);      
    }*/
}