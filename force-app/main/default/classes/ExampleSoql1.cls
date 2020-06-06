public class ExampleSoql1 {
    public list<Account> accs {get;set;}
    public exampleSoql1(){
        accs=[select id, name , industry from Account];
    }
    
    public void offSet(){
        accs = [select id,name,industry from account offset 5];
    }
        public void getLimit(){
        accs = [select id,name,industry from account offset5 limit 7];
    }
}