public with sharing class AccountUtils {

    public static list<account> accountsByState(string states){
        
        list<account> accnt = new list<account>([select id,name from account where BillingState=:states]);
        
        return accnt;
    }
}