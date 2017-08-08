public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numCts, String lastName){
        
        List<Contact> cts = new List<Contact>();
        
        for(Integer i=0;i<numCts;i++) {
            String FirstName = '';
            lastName = lastName + i;
            FirstName = 'FirstName' + i;
            Contact c = new Contact(LastName= lastName, FirstName=FirstName);
            cts.add(c);
        }
        
        return cts;
    }
}