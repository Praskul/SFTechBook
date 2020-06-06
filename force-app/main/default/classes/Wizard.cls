public class Wizard {
	
    public Account a = new Account();
    public Contact c =new Contact();
    public Opportunity o = new Opportunity();
    
    

   public Account geta(){
        return a;
    }
    public Contact getc(){
        return c;
    }
    public Opportunity geto(){
        return o;
    } 

    public PageReference account_page(){
        return Page.account_page;
    }
    public PageReference contact_page(){
        return Page.contact_page;
    }
    public PageReference opportunity_page(){
        return Page.opportunity_page;
    }
    public PageReference review_page(){
        return Page.review_page;
    }    
    public PageReference thankyou_page(){
        insert a;
        c.AccountId=a.id;
        insert c;
        o.AccountId=a.id;
        insert o;
        return Page.thankyou_page;
    }


}