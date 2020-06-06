@RestResource(urlMapping='/contactAPIPut/*')
global with sharing class ContactResourcePut {

    @HTTPPut
    global static Contact upsertContact(string firstName,string lastName,string birthdate,string leadsource){

        RestRequest contactRequest = Restcontext.request;
        string contactRequestURI = contactRequest.requestURI;
        string contactId = contactRequestURI.subString(contactRequestURI.lastIndexOf('/')+1);

        contact contact = new contact();
        if(string.isNotEmpty(contactId)){
            contact.id=contactId;
        }
        contact.firstName=firstName;
        contact.lastName=lastName;
        contact.leadsource=leadsource;
        contact.birthdate=date.parse(birthdate);
        upsert contact;
        return contact;
    }
}