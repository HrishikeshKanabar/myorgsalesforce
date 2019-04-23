@isTest

public class AddPrimaryContactTest {

   @isTest
   static void TestList(){
        
        List<Account> teste = new List <Account>();
       
       for(Integer i =0;i<50;i++){
           
           
           Teste.add(new Account(Billingstate ='CA' ,Name ='Test'+i));
       }
       for(Integer j=0;j<50;j++){
           
           Teste.add(new Account(Billingstate ='NY' ,Name ='Test'+j));
       }
        
      insert Teste;
       
      contact co =new contact();
      co.FirstName ='demo';
      co.LastName ='demo';
      insert co;
      string state ='CA';
      AddPrimaryContact apc =new AddPrimaryContact(co,state);
      Test.startTest();
      system.enqueueJob(apc);
      Test.stopTest();
   
   }


}