public with sharing class trigger11Account_handler {

    public static void afetr_Insert(list<account> accList){
        list<Contact> conList = new List<Contact>();
        list<Opportunity> opList = new List<Opportunity>();
        for(account a : accList){

            Contact c = new Contact();
            c.lastname = 'Default '+ a.name;
            c.accountId=a.Id;
            conList.add(c);

            Opportunity o = new Opportunity();
            o.name = 'Default '+ a.name;
            o.accountId = a.Id;
            o.stageName='Closed Lost';
            o.CloseDate=system.today();
            opList.add(o);

        }

        Insert conList;
        Insert opList;
    }
}