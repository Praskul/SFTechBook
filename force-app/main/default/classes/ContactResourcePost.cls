@RestResource(urlMapping='/ContactAPIPost/*')
global with sharing class ContactResourcePost {
    
    @HTTPPost
    global static contact createNewContact(string firstName,string lastName,string birthdate,string leadsource){
        contact contact = new contact();
        contact.firstName=firstName;
        contact.lastName=lastName;
        contact.birthdate=date.parse(birthdate);
        contact.leadsource=leadsource;
        insert contact;
        return contact;        
    }
}