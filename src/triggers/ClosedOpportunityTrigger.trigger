trigger ClosedOpportunityTrigger on Opportunity (before insert) {

    List<Task> tasklist =new List<Task>();
    
    
    for (Opportunity opp:Trigger.new){
        
                
        if(opp.stageName=='Closed Won'){
            
            Task t =new Task();
            t.Subject='Follow Up Test Task';
            t.WhatId =opp.Id;
            tasklist.add(t);
            
            
        }
    
     
    }
    
    
    if(tasklist.size()>0)
        
        {
            
             insert tasklist;
        }
    


}