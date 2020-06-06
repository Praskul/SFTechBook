//setting up the Request Url
@RestResource(urlMapping='/contactAPIPatch/*')
global with sharing class ContactResourcePatch {

    //Patch method
    @HTTPPatch
    global static Contact updateContact(){
        //Initializing the request parameter with the incoming request.
        RestRequest contactRequest = RestContext.request;
        //Getting the request URI
        string contactRequestURI = contactRequest.requestURI;
        //Getting the contact id from the request URI
        string contactId = contactRequestURI.subString(contactRequestURI.lastIndexOf('/')+1);
        //Getting Request body from the request
        string contactRequestBody = contactRequest.requestBody.toString();
        //Creating an instance of the contact object
        Contact contact;

        //checking the contact id which is obtained from the url is not empty
        if (string.isNotEmpty(contactId)) {
            //Deserializing the request body and assigning it to the instance of the contact object
            contact= (Contact) JSON.deserialize(contactRequestBody, contact.class);
            //Assigning the contact id
            contact.Id=contactId;
            //updating the contact
            update contact;
        }
        //returning the contact in the response
        return Contact;
    }
}