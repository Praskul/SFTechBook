trigger trigger12Account on Account (before insert) {
    for(Account a : Trigger.new){
        if(a.industry=='Banking'){
            a.phone='1234567891';
        }
    }
}