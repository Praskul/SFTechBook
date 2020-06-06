public with sharing class trigger1Student_helper {

    public static void before_Insert(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.address__c==null || s.address__c==''){
                s.address__c='California';
            }
        }
    }

    public static void before_Update(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.address__c==null || s.address__c==''){
                s.address__c='New York';
            }
        }
    }
}