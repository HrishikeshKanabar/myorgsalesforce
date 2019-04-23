public class AddPrimaryContact implements Queueable {
 
    private Contact c;
    private string state;
    
    public AddPrimaryContact (Contact c, string state){
        this.c =c;
        this.state=state;
        
        
    }
    
    public void execute(QueueableContext context){
        
        List<Account> ListAccount = [SELECT Id, Name ,(SELECT Id, FirstName , LastName FROM Contacts) FROM Account Where BillingState=:state LIMIT 200];
        List<Contact> lstContact = new List<Contact>();
        for (Account acc:ListAccount){
            
            Contact cont=c.clone(false,false,false,false);
            cont.AccountId=acc.Id;
            lstContact.add(cont);
        
        
        
        }
        
        if(lstContact.size()>0){
            
            insert lstcontact;
            
        }
        
        
        
    }
  
}