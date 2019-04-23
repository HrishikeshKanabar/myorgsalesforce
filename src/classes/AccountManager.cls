@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {

    @HttpGet
    global static Account getAccount(){
        
        RestRequest request =RestContext.request;
        string accountId=request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug(accountId);
        Account objAccount =[SELECT Id,name,(SELECT Id,Name from Contacts) FROM Account Where Id= :accountId LIMIT 1];
        return objAccount;
    
        
        
    
    
    }


}