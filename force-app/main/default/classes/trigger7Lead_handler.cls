public with sharing class trigger7Lead_handler {

    public static void before_Update(List<Lead> leadList){
        
        Set<string> ld = new Set<string>();
        for(Lead l : leadList){
            ld.add(l.email);
        }

        List<Lead> leads = [select id,name,email from Lead where email in :ld];
        map<string,lead> mapList = new map<string,lead>();
        for(lead lsd : leads){
            mapList.put(lsd.email, lsd);
        }


        if(leads.size()>0 && leads!=null){
            for(Lead ls : leadList){
                if(mapList.get(ls.email)!=null){
                    ls.addError('Hey!!! There is an already an lead with same email address '+mapList.get(ls.email).Id);
                }
            }
        }
    }
}