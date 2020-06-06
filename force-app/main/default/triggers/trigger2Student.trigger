trigger trigger2Student on student__c (before insert, before update) {

    if(trigger.isInsert && trigger.isBefore){
        trigger2Student_helper.before_Insert(trigger.new);
    }
    else if(trigger.isUpdate && trigger.isBefore){
        trigger2Student_helper.before_Update(trigger.new);
    }
}