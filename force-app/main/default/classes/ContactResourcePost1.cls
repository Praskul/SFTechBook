@RestResource(urlMapping='/ContactAPIPost1/*')
global with sharing class ContactResourcePost1 {

    @HTTPPost
    global static contact createNewContact1(){

        RestRequest contactRequest = RestContext.request;
        string requestBody = contactRequest.requestBody.toString();
        contact contact = (contact) JSON.deserialize(requestBody,contact.class);
        insert contact;
        return contact;
    }
}