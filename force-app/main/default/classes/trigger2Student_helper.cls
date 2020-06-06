public with sharing class trigger2Student_helper {

    public static void before_Insert(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.gender__c == 'Male' && s.gender__c!='Female' && !string.ValueOf(s.name).startsWith('Mr.') && !string.ValueOf(s.name).startsWith('Mrs.')){
                s.name='Mr.'+s.name;
            }
            else if(s.gender__c == 'Female' && s.gender__c!='Male' && !string.ValueOf(s.name).startsWith('Mr.') && !string.ValueOf(s.name).startsWith('Mrs.')){
                s.name='Mrs.'+s.name;
            }
        }
    }

    public static void before_Update(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.gender__c == 'Male' && s.gender__c!='Female' && !string.ValueOf(s.name).startsWith('Mr.') && !string.ValueOf(s.name).startsWith('Mrs.')){
                s.name='Mr.'+s.name;
            }
            else if(s.gender__c == 'Female' && s.gender__c!='Male' && !string.ValueOf(s.name).startsWith('Mr.') && !string.ValueOf(s.name).startsWith('Mrs.')){
                s.name='Mrs.'+s.name;
            }
        }
    }
}