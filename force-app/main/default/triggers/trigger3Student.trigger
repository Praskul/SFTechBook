trigger trigger3Student on student__c (before insert, before update) {

    if(Trigger.isBefore && Trigger.isInsert){
        trigger3Student_helper.before_Insert(Trigger.new);
    }

    else if(Trigger.isBefore && Trigger.isUpdate){
        trigger3Student_helper.before_Update(Trigger.new);
    }
}