trigger Tgr4 on Faculty__c (before update, before delete) {

    if(trigger.isUpdate){
        list<Faculty__c> fcListNew = new list<Faculty__c>();
        for(Faculty__c fc : trigger.old){
            fcListNew.add(fc);
        }
        trg4HandlerClass.beforeUpdate(fcListNew);
    }
    
    if(trigger.isDelete){
        list<Faculty__c> fcListOld = new list<Faculty__c>();
        for(Faculty__c fc : trigger.old){
            fcListOld.add(fc);
        }        
        trg4HandlerClass.beforeDelete(fcListOld);        
    }    
}