public class AccountTriggerHandler {
	
    public static void CreateAccounts(list<account> acnts){
        list<account> accnts = new list<account>();
        for(account a : acnts){
           a.BillingState= a.ShippingState;
            accnts.add(a);
        }
        insert accnts;
    }
}