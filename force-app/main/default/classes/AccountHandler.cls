public with sharing class AccountHandler {
    public static void CreateNewOpportunity(List<Account> accts) {
        list<opportunity> opps = new list<opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opps.add(opp);
        }
        insert opps;
    }
}