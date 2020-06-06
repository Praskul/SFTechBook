trigger trigger10Opportunity on Opportunity (after insert, after update) {

    

        trigger10Opportunity_helper.before_Insert(Trigger.new,Trigger.newMap,Trigger.oldMap);
    
}