@isTest
public with sharing class Calculator_Tests {

    @isTest
    public static void testAddition()
    {
        Test.startTest();
        System.assertEquals(Calculator.addition(100, 50), 150, 'Total should be 150');
        Test.stopTest();
    }

    @isTest
    public static void testSubstration() {
        Test.startTest();
        System.assertEquals(Calculator.subtraction(500, 400), 100, 'Total should be 100');
        Test.stopTest();
    }

    @isTest
    public static void testMumtiply() {
        Test.startTest();
        System.assertEquals(Calculator.multiply(100, 50), 5000, 'Total should be 5000');
        Test.stopTest();
    }

    @isTest
    public static void testMultiplyNegativeScenario(){
        Test.startTest();
        try {
            Calculator.multiply(15, 0);
        } catch (Calculator.CalculatorException e) {
            System.assertEquals('It doesn\'t make sense to multiply by zero',  e.getMessage() ,'Caught the right exception');
        }
        Test.stopTest();
    }

    @isTest
    public static void testDivide() {
        Test.startTest();
        System.assertEquals(Calculator.divide(500, 100), 5, 'Total should be 5');
        Test.stopTest();
    }

    @isTest
    public static void testDivideNegativeScenario_Divide_By_Zero() {
        Test.startTest();
        try {
            Calculator.divide(22, 0);
        } catch (Calculator.CalculatorException e) {
            System.assertEquals('you still can\'t divide by zero', e.getMessage()  , 'Caught the right exception');
        }
        Test.stopTest();
    }

    @isTest
    public static void testDivideNegativeScenario_Divide_Returns_Negative_Value() {
        Test.startTest();
        try {
             Calculator.divide(-22, 11);
        } catch (Calculator.CalculatorException e) {
            System.assertEquals('Division returned a negative value.-2', e.getMessage()  , 'Caught the right exception');
        }
        Test.stopTest();
    }
}
