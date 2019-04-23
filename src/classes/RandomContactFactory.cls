public class RandomContactFactory {


    public static list<Contact> generateRandomContacts (integer numofContacts,string LastNameGen){
        
        List<contact> con =new list<contact>();
        
        for (Integer i =0; i< numofContacts; i++){
            
            LastNameGen ='Test'+i;
            Contact a =new Contact(FirstName=LastNameGen ,LastName =LastNameGen);
            con.add(a);
            
        }
   
      return con;
  }
}