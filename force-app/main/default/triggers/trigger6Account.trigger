trigger trigger6Account on Account (before insert) {

    if(Trigger.isBefore && Trigger.isInsert){
        trigger6Account_handler.before_Insert(Trigger.new);
    }
}