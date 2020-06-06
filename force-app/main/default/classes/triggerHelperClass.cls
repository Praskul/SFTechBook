public class triggerHelperClass {

    public void contactInsert(list<student__c> student){
        for(student__c stu : student){
            if(stu.address__c == null){
                stu.address__c = 'Karnataka';
            }
        }
    }

    public void contactUpdate(list<student__c> student){
        for(student__c stu : student){
            if(stu.address__c == null){
                stu.address__c = 'Telangana';
            }
        }
    }
    
    public void genderMale(list<student__c> stud){
        for(student__c s : stud){
            if(s.gender__c == 'Male' && !s.name.contains('Mr.')){
                s.name='Mr.'+s.name;
            }
            
        }
    }

    public void genderFemale(list<student__c> stud){
        for(student__c s : stud){
            if(s.gender__c == 'Female' && !s.name.contains('Mrs.')){
                s.name='Mrs.'+s.name;
            }
            
        }
    }   
    
    public void feeCalculator(list<student__c> students){
        for(student__c st : students){
            if(st.country__c=='India'){
                st.fees__c = st.Fees__c - st.Fees__c*0.1;
            }
            if(st.country__c=='Japan'){
                st.fees__c = st.Fees__c - st.Fees__c*0.2;
            }
            if(st.country__c=='UK'){
                st.fees__c = st.Fees__c - st.Fees__c*0.3;
            }
            if(st.country__c=='USA'){
                st.fees__c = st.Fees__c - st.Fees__c*0.4;
            }
            
        }
    }
    
    public void beforeDelete(list<student__c> studentsList){
        for(student__c stud : studentsList){
            if(stud.fees__c !=null){
                stud.addError('You cant delete as this record has fees with it');
            }
        }
    }

}