trigger trigger8Account on Account (before update) {

   /* Map<Id,Account> mapList = Trigger.newMap;
    list<contact> conList = [select id,name,phone,accountId from Contact where accountId in : mapList.keySet()];
    for(Contact c : conList){
        c.phone = mapList.get(c.accountId).phone;
        update c;
    } */
    trigger8Account_handler.before_Update(trigger.newMap.keySet(), trigger.new);
}