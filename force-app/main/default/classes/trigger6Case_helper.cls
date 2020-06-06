public with sharing class trigger6Case_helper {

    public static void before_Update(List<Case> caseList){
        //Id userId =[select id from User where email ='kulalprashantha7@gmail.com' limit 1];
        //list<Case> cases = new list<Case>();
        for(Case c : caseList){
            if(c.status=='Working'){
                c.OwnerId=c.lastModifiedById;
                
            }
        }
       // update cases;
    }
}