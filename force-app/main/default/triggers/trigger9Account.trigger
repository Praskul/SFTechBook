trigger trigger9Account on Account (before update) {

    trigger9Account_handler.before_Update(Trigger.newMap.keySet());
}