public with sharing class trigger8Account_handler {
    
   public static void before_Update(Set<Id> Ids, list<Account> accList){

        Map<Id, Account> mapList = new Map<Id, Account>();
        for(Account a : accList){
            mapList.put(a.id,a);
        }
        list<Contact> conList = [select id,name,phone,accountId,Description__c from contact where accountId in :Ids];

        list<Contact> cs = new list<Contact>();
        for(Contact c : conList){
            c.phone=mapList.get(c.accountId).phone;
            //c.Description__c=mapList.get(a.accountId).Description__c;
            cs.add(c);
        }
        update cs;
    } 
}