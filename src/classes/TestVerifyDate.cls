@isTest
private class TestVerifyDate {

    @isTest static void checkDatesTesttrue(){
        
        Date date1 =date.today();
        Date date2=date1.addDays(29);
        Date t =verifyDate.CheckDates(date1, date2);
        system.assertEquals(t, date2);
                  
        
    }
    
    @isTest static void DateOver(){

        Date date1 =date.today();
        Date date2=date1.addDays(31);
        Date t =verifyDate.CheckDates(date1, date2);
        system.assertNotEquals(t, date1);
    }





}