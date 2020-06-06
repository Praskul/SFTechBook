public class trg4HandlerClass {

    public static void beforeUpdate(list<Faculty__c> fcListNew){
       list<Faculty_Backup__c> fcInsert = new list<Faculty_Backup__c>();
        Faculty_Backup__c fcBckp = new Faculty_Backup__c();
        for(Faculty__c fcl :fcListNew ){
          	fcBckp.email_id__c = fcl.email_id__c;
            fcBckp.exp__c = fcl.exp__c;
            fcBckp.Ph_no__c =  fcl.Ph_no__c; 
                    fcInsert.add(fcBckp);

        }
        Insert fcInsert;
        
    }
    
    public static void beforeDelete(list<Faculty__c> fcListNew){
       list<Faculty_Backup__c> fcInsert = new list<Faculty_Backup__c>();
        Faculty_Backup__c fcBckp = new Faculty_Backup__c();
        for(Faculty__c fcl :fcListNew ){
          	fcBckp.email_id__c = fcl.email_id__c;
            fcBckp.exp__c = fcl.exp__c;
            fcBckp.Ph_no__c =  fcl.Ph_no__c;         
        fcInsert.add(fcBckp);

        }
        insert fcInsert;
    }  
}