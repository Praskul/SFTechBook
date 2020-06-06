@isTest
public class TVRemoteControlTest {

    @isTest static void testVolumeIncrease(){
        TVRemoteControl tvr = new TVRemoteControl(10);
        integer newVolume = tvr.increaseVolume(15);
        system.assertEquals(25, newVolume);
    }
    
    @isTest static void testdecreaseVolume(){
        TVRemoteControl tvf = new TVRemoteControl(15);
        integer newVolume = tvf.decreaseVolume(15);
        system.assertEquals(0, newVolume);
    }
        @isTest static void testgetMenuOption(){
        string options = TVRemoteControl.getMenuOption();
        system.assertNotEquals(null, options);
        system.assertNotEquals('', options);
    }
    
    @isTest static void testtestdecreaseVolumeMax(){
      TVRemoteControl tvm = new TVRemoteControl(10);
      integer maxValue =tvm.increaseVolume(100);
        system.assertEquals(50, maxValue);
    }

}