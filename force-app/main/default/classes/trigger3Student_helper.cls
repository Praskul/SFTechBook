public with sharing class trigger3Student_helper {

    public static void before_Insert(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.country__c=='India'){
                s.fees__c = s.fees__c - s.fees__c*0.1;
            }
            else if(s.country__c=='UK'){
                s.fees__c = s.fees__c - s.fees__c*0.2;
            }
            else if(s.country__c=='Japan'){
                s.fees__c = s.fees__c - s.fees__c*0.3;
            }
            else if(s.country__c=='USA'){
                s.fees__c = s.fees__c - s.fees__c*0.4;
            }
        }
    }

    public static void before_Update(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.country__c=='India'){
                s.fees__c = s.fees__c - s.fees__c*0.1;
            }
            else if(s.country__c=='UK'){
                s.fees__c = s.fees__c - s.fees__c*0.2;
            }
            else if(s.country__c=='Japan'){
                s.fees__c = s.fees__c - s.fees__c*0.3;
            }
            else if(s.country__c=='USA'){
                s.fees__c = s.fees__c - s.fees__c*0.4;
            }
        }
    }

}