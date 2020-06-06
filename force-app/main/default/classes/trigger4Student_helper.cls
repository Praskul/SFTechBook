public with sharing class trigger4Student_helper {

    public void before_Delete(list<student__c> stuList){
        for(student__c s : stuList){
            if(s.country__c == 'India'){
                s.addError('Please Stop!!! You cannot delete record with country name as India. Record Id is '+s.Id);
            }
        }
    }
}