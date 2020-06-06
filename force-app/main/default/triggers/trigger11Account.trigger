trigger trigger11Account on Account (after insert) {

    trigger11Account_handler.afetr_Insert(Trigger.new);
}