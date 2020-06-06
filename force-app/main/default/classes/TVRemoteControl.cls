public class TVRemoteControl{

integer volume; //volume to be modified
static final integer MAX_VOLUME=50; //constant for maximum volume

public TVRemoteControl (integer v){

    volume=v;
}

public integer increaseVolume(integer amount){
    volume +=amount;
    if(volume > MAX_VOLUME){
        volume=MAX_VOLUME;
    }
   return volume;
}
    @TestVisible private integer decreaseVolume(integer amount){
     volume -=amount;
     if(volume<0){
     volume=0;
     }
     return volume;
    }
    
    public static string getMenuOption(){
    return 'AUDIO SETTINGS - VIDEO SETTINGS';
    }
}