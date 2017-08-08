trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isInsert){
    	Integer recordCount = Trigger.New.size();
    	// Call a utility method from another class
    	EmailManager.sendMail('cyril.meusnier@carrenet.com', 'TrailHead Trigger', recordCount + ' contact(s) were inserted'); 
        
    	
    }else if (Trigger.isDelete){
    	// process after delete
    }
}