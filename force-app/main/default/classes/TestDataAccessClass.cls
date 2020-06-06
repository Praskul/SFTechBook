@isTest(SeeAllData=true)
public class TestDataAccessClass {
	
    @isTest static void myTestMethod1(){
        contact cnt = [select id, name from contact where name=:'Arjuntest' limit 1];
        system.assert(cnt!=null, 'We are extracting data from production');
    }
}