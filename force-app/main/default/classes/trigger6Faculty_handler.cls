public with sharing class trigger6Faculty_handler {

    public static void bedore_Update(list<Faculty__c> fcList){

        list<Faculty_Backup__c> fcBackupList = new list<Faculty_Backup__c>();
        for(Faculty__c fc : fcList){
            
            Faculty_Backup__c fcBackup = new Faculty_Backup__c();
            fcBackup.name =fc.name;
            fcBackup.exp__c=fc.exp__c; 
            fcBackup.Ph_no__c=fc.Ph_no__c;
           // fcBackup.Status__c=fc.Status__c;
            fcBackup.email_id__c=fc.email_id__c;
            fcBackupList.add(fcBackup);
        }
        insert fcBackupList;
    }
}