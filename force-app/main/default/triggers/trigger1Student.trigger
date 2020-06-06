trigger trigger1Student on student__c (before insert, before update) {

    if(Trigger.isInsert && Trigger.isBefore){
        trigger1Student_helper.before_Insert(trigger.new);
    }

    if (Trigger.isUpdate && Trigger.isBefore) {
        trigger1Student_helper.before_Update(trigger.new);

}
}