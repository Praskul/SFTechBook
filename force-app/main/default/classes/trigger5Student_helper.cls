public with sharing class trigger5Student_helper {

    public static void before_Insert(list<student__c> stuList){
        
        set<string> stuNames = new set<string>();
        for(student__c s : stuList){
            stuNames.add(s.name);
        }

        list<student__c> stuDetails = [select id,name,student_email__c from student__c where name in :stuNames];
        
        Map<string, student__c> mapName = new Map<string, student__c>();
        for(student__c sd : stuDetails){
            mapName.put(sd.name, sd);
        }

        for(student__c sl : stuList){
            if(mapName.get(sl.name) !=null){
                sl.addError('This is a duplicate record!!! and Id is '+mapName.get(sl.name).Id);
            }
        }
    }
}