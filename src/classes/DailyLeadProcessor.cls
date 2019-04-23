global class DailyLeadProcessor implements Schedulable {

    
    global void execute(SchedulableContext sc) {
        
       List<Lead> lstofLead = [SELECT Id FROM Lead where LeadSource = null Limit 200];
        
        List<Lead> lstofUpdatedLead = new List<Lead>();
        if(!lstofLead.isEmpty()){
            
            
            for (Lead ld : lstofLead){
                
                ld.LeadSource='Dreamforce';
                lstofUpdatedLead.add(ld);
            }
        
        
             update lstofUpdatedLead;        
        }
        
        
    }
}