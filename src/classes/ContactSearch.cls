public class ContactSearch {
    public static List<Contact> searchForContacts(String LastName, String PostalCode){
        List<Contact> listContact = new List<Contact>();
        
        listContact = [SELECT FirstName, LastName 
                      FROM Contact
                      WHERE LastName=:LastName AND MailingPostalCode=:PostalCode];
        
        
        return listContact;
    }
}