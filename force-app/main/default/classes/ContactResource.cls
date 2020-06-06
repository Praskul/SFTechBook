//setting up the request url
@RestResource(urlMapping='/ContactAPI/*')
global with sharing class ContactResource {
    
    //Get Method
    @HTTPGet
    global static list<contact> getContactIdandName(){
        //initiallizing the request parameter with incoming request
        RestRequest contactRequest = RestContext.request;

        //Getting the request URI- which is after /apexrest string
        String contactRequestURI =  contactRequest.requestURI;

        //Getting the limit from request URI
        Integer contactLimit = Integer.valueOf(contactRequestURI.subString(contactRequestURI.lastIndexOf('/') + 1));

        //Quering the contacts
        list<contact> contactList = [select id,name from contact LIMIT :contactLimit];
        return contactList;
    }


}