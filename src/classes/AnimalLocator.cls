public class AnimalLocator {

    
    public static string getAnimalNameById(Integer Id) {
            
         Http http = new Http();
         HttpRequest request = new HttpRequest();
         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
         request.setMethod('GET');
         HttpResponse response = http.send(request);
     
        string strResp='';
        system.debug('Response' + response.getStatusCode());
        system.debug('Response' + response.getBody());
         
            
            // If the request is successful, parse the JSON response.
            if (response.getStatusCode() == 200) {
                // Deserialize the JSON string into collections of primitive data types.
                Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
                Map<String, Object> animals = (Map<string, Object>) results.get('animal');
                system.debug('Recieved following animals:'+ animals); 
                strResp= string.valueOf(animals.get('name'));
                system.debug('strResp >'+ strResp);
               
            
            
            }


       return strResp;

}



}