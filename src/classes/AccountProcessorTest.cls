@IsTest
public class AccountProcessorTest {

    public static testmethod void TestAccountProcessorTest(){
        
        
        Account a =new Account();
        
        a.Name= 'Test Account';
        Insert a;
        
        Contact cont =new Contact();
        cont.FirstName='Test';
        cont.LastName='Hello to test';
        cont.AccountId=a.Id;
        Insert cont;
        
        set<Id> setAccId =new set<ID>();
        setAccId.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(setAccId);
        Test.stopTest();
    
        Account Acc =[SELECT Number_of_contacts__c FROM Account Where Id = :a.Id LIMIT 1];
        system.assertEquals(Integer.valueOf(Acc.Number_of_Contacts__c),1);
    }


}