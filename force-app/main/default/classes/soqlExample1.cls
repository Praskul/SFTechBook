public class soqlExample1 {

    public list<Account> accs {set; get;}
    
    public soqlExample1(){
        accs=[select id,name,industry from account where name='TOPAS'order By name asc offset 0];
    }
    public void getOffSet(){
        accs=[select id,name,industry from account offset 5];
    }
    public void getLimitRecords(){
        accs=[select id, name, industry from account limit 7];
    }
        public void getAllRecords(){
        accs=[select id, name, industry from account ALL ROWS];
    }
        
        public void getRecycledRecords(){
        accs=[select id, name, industry from account where isDeleted=true ALL ROWS];
    }
}