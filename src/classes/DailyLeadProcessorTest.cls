@isTest
public class DailyLeadProcessorTest {

   @testsetup
    static void setup(){
        
        List<Lead> lstofLead = new List<Lead>();
        
        for (Integer i=1;i<=200;i++){
            
            Lead ld = new Lead(Company='comp'+i,LastName ='LN',status ='working-contacted');          
            lstofLead.add(ld);
            
        }
        
         Insert lstofLead;        
    }


    static testmethod void testDailyLeadProcessorScheduleJob(){
        
        string sch ='0 5 12 * * ?';
        test.startTest();
        string jobId =system.schedule('ScheduleApexText',sch,new DailyLeadProcessor());
        
        list<Lead> lstofLead =[SELECT Id from Lead where LeadSource = null LIMIT 200];
        system.assertEquals(200,lstofLead.size());
        test.stopTest();
        
        
        
        
    }
}