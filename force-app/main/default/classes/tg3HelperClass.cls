public class tg3HelperClass {

    public void contactRemoval(list<account> accountList){
       list<string> acnNames = new list<string>();
        
        for(account acn : accountList){
            acnNames.add(acn.name);
        }
        
        list<contact> conList = [select id, name from contact where name in:acnNames];
        if(conList.size() > 0){
            delete conList;
        }
        
    }
}