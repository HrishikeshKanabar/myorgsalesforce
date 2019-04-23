@isTest
public class ParkLocatorTest {
    @isTest
    static void testcallout(){
        
        Test.setMock(WebServiceMock.class,new ParkServiceMock());
        String country='USA';
        system.assertEquals(new List<string>{'Me','You','Him'},ParkLocator.country(country));
    }
    
}