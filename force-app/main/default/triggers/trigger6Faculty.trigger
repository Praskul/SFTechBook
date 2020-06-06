trigger trigger6Faculty on Faculty__c (before update) {

    if(Trigger.isBefore && Trigger.isUpdate){

        trigger6Faculty_handler.bedore_Update(Trigger.old);
    }
}