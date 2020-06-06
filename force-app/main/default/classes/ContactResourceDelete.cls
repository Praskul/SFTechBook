@RestResource(urlMapping='/contactAPIDelete/*')
global with sharing class ContactResourceDelete {

    @HTTPDelete
    global static map<string,string> deleteContact(){

        map<string,string> responseMap = new map<string,string>();

        RestRequest contactRequest = RestContext.request;
        string contactRequestURI = contactRequest.requestURI;
        //System.debug('contactRequestURI is '+contactRequestURI);
        Id contactId = Id.valueOf(contactRequestURI.subString(contactRequestURI.lastIndexOf('/') +1));

        Contact contact = new Contact(Id=contactId);
        try {
            delete contact;
            responseMap.put('success','1');
            responseMap.put('Message','Record deleted successfully');
            responseMap.put('Id',contactId);

        } catch (dmlException ex) {
            responseMap.put('success','0');
            responseMap.put('Message',ex.getMessage());
        }
        return responseMap;

    }

}