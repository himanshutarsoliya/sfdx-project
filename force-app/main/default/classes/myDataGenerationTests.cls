@isTest
private class myDataGenerationTests {
    @testSetup
    static void loadTestDataFromStaticResources(){
        List<sObject> accounts = Test.loadData(Account.sobjectType, 'Mock_Data');
    }
    
    @isTest
    static void testLoadAccountFromStaticResources(){
        List<Account> acct = [SELECT ID FROM ACCOUNT];
        system.assert(acct.size() == 15, 'expected 15 accounts');
    }

}