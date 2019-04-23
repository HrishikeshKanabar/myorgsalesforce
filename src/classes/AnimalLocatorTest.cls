@isTest
private class AnimalLocatorTest {

    @isTest 
    static void AnimalLocatorTestMock1(){
        
        Test.setMock(HttpCallOutMock.class, new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(3);
        system.debug(result);
        string expectedResult ='cow';
        system.assertEquals(result,expectedResult);  
        
        
        
    }



}