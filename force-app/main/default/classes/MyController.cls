public class MyController{
    
    private final list<Account> acc;
    
    public MyController(){
        acc= [select id, name, site from Account where id =: ApexPages.currentPage().getParameters().get('id')];
    }
    
    public List<Account> getAccount(){
        return acc;
    }
    
    public PageReference save(){
        update acc;
        return null;
    }
}