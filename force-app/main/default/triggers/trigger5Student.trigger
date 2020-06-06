trigger trigger5Student on student__c (before insert, before update) {

    if(Trigger.isBefore && Trigger.isInsert){
        trigger5Student_helper.before_Insert(trigger.new);
    }
    else if(Trigger.isBefore && Trigger.isUpdate){

    }
}