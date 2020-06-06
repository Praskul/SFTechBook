public with sharing class trigger9Account_handler {

    public static void before_Update(set<Id> ids){
        list<Account> accList = [select id,name,phone,
                                    (select id,name,phone,accountId from Contacts) from Account where Id in :ids ];
        
        
        List<Contact> conList = new List<Contact>();
        for(Account a : accList){
            for(Contact c : a.Contacts){
                c.phone=a.phone;
                conList.add(c);
            }
        }
        update conList;
    }
}