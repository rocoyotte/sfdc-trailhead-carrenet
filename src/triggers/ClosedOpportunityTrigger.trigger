trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> taskList = new List<Task>();
    
    // Création de la liste des Opportunités avec des tâches
    Map<Id,Opportunity> oppWithTasks = new Map<Id,Opportunity>([SELECT Id,(SELECT Id FROM Tasks) FROM Opportunity WHERE Id IN :Trigger.New]);
    
    
    for(Opportunity o : [SELECT Id,Name FROM Opportunity WHERE Id IN :Trigger.New AND StageName='Closed Won']) {
        // si l'opportunité est en Closed Won et qu'elle n'a pas déjà de tâche
        if( oppWithTasks.get(o.Id).Tasks.size()==0 ){
            System.debug('Creating new task for Opportunity ' + o.Id);
            // alors on ajoute une nouvelle tâche
            taskList.add(new Task(
            	Subject='Follow Up Test Task',
                WhatId=o.Id
            ));
        }
    }
    // on enregistre la tâche
    if (taskList.size() > 0) {
        insert taskList;
    }
}