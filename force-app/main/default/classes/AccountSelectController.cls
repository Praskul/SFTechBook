public class AccountSelectController {

    public list<WrapAccount> wrapaccountList;
    
    public AccountSelectController(){
        if(wrapaccountList==null){
            wrapaccountList= new list<WrapAccount>();
            list<account> acc = [select id,name,billingstate,website,phone 
                          from account];
            for(account a : acc){
                wrapaccountList.add(new WrapAccount(a));
            }
            system.debug('Account list is as follows '+wrapaccountList);
        }
    }    
    
    
    public class WrapAccount{
        public account acc{get;set;}
        public boolean selected{get;set;}
        
        public WrapAccount(account a){
            acc=a;
            selected=false;
        }
    }
}