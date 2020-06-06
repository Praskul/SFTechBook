@isTest
public with sharing class trigger12AccountTest {

    @isTest
    static void accountTest(){
        Test.startTest();
        Account acc = new Account();
        acc.name='Test Account Name';
        acc.Industry='Banking';
        try {
            Insert acc;
        } catch (Exception ex) {
            System.debug(ex.getMessage());
        }

        Account a = [select id,name,Industry,phone from account];
        System.assertEquals(a.Industry,'Banking');
        System.assertEquals(a.phone,'1234567891');
        Test.stopTest();
    }
}