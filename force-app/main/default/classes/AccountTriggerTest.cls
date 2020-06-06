@isTest
public class AccountTriggerTest {

    @isTest static void CreateAccountsTestMethod(){
        
        list<account> accns = new list<account>();
        for(integer i=0; i>200; i++){
            
            account acc = new account(name='Test Account '+i);
            acc.billingstate='CA';
            acc.CurrencyIsoCode='USD - U.S. Dollar';
            accns.add(acc);
        }
        
        Test.startTest();
        insert accns;
        Test.stopTest();
        
        list<account> acn = [select id from account where billingState='CA'];
        system.assertEquals(200,acn.size());

    }
}