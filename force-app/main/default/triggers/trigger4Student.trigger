trigger trigger4Student on student__c (before delete) {
    
    trigger4Student_helper helper = new trigger4Student_helper();
    helper.before_Delete(Trigger.old);
    
}