@isTest
public class TestVerifyDate {
	@isTest static void testCheckDate2InDate1() {
        Date date1 = Date.today();
        Date date2 = date1.addDays(10);
        Date dateReturn = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(date2,dateReturn);
    }
    
    @isTest static void testCheckEndOfMonth() {
        Date date1 = Date.newInstance(2017, 06, 19);
        Date date2 = date1.addDays(31);
        
        Integer nbDays = Date.daysInMonth(2017, 06);
        Date dateExpected = Date.newInstance(2017, 06, nbDays);
        
        Date dateReturn = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(dateExpected,dateReturn);
    }
}