//setting up the request url
@RestResource(urlMapping='/ContactAPI1/*')
global with sharing class ContactResource1 {
    
    @HTTPGet
    global static list<contact> getContactIdandName1(){
        //Initializing the request parameters with incoming request
        RestRequest contactRequest = system.RestContext.request;
        
        map<string,string> contactRequestParams = contactRequest.params;

        integer contactLimit = Integer.valueOf(contactRequestParams.get('limit'));
        string leadSource = contactRequestParams.get('leadsource');

        list<contact> contactList = [select id,name,leadSource from contact where LeadSource =:leadSource LIMIT :contactLimit];
        return contactList;

    }

}