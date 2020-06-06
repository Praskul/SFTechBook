public with sharing class trigger6Account_handler {

    public static void before_Insert(list<account> accList){
        
        Set<string> names = new Set<string>();
        for(Account a : accList){
            names.add(a.name);
        }

        list<Contact> conList = [select id,name from Contact where name in :names];

        if(conList!=null && conList.size()>0){
          
            delete conList;

        }
    }
}