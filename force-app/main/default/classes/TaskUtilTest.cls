@isTest 
public class TaskUtilTest {

    @isTest static void testMethod1(){
		string value1 = TaskUtil.getTaskPriority('enu');
        system.assertEquals(null, value1);
        
    }
      
        @isTest static void testMethod2(){ 
		string value1 = TaskUtil.getTaskPriority('CA');
        system.assertEquals('High', value1);
        
    }
        @isTest static void testMethod3(){
		string value1 = TaskUtil.getTaskPriority('NY');
        system.assertEquals('Normal', value1);
        
    }    
}