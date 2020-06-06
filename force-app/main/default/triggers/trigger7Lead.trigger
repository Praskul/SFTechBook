trigger trigger7Lead on Lead (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        trigger7Lead_handler.before_Update(Trigger.new);
    }
}