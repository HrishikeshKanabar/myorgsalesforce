@isTest
public class AccountManagerTest {

    static testMethod void testMethod1(){
        
        Account objAccount = new Account(name='Test Account');
        insert  objAccount;
        
        contact objContact = new Contact(LastName ='Test Contact' , AccountId =objAccount.Id);
        insert  objContact;
        
        Id recordId = objAccount.Id;
        RestRequest request = new RestRequest();
        request.requestURI='https://playful-raccoon-297716-dev-ed.lightning.force.com/service/apexrest/Accounts/'+recordId + '/contacts';
        request.httpMethod='GET'; 
        RestContext.request=request;
        
        Account thisAccount = AccountManager.getAccount();
        
        system.assert(thisAccount!=null);
        system.assertEquals('Test Account',thisAccount.Name);
        
    }


}