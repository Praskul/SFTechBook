//seyying up the request url
@RestResource(urlMapping='/contactAPIPatch1/*')
global with sharing class ContactResourcePatch1 {

    //creating a response wrapper class
    global class ResponseWrapper{
        string message;
        string success;
    }

    //Patch method
    @HTTPPatch
    global static list<ResponseWrapper> updateContacts(){

        //Initailising the response wrapper list
        list<ResponseWrapper> responseWrapperList = new list<ResponseWrapper>();
        //Initializing the request parameters with the incoming request
        RestRequest contactRequest = RestContext.request;
        //Getting the request body from the request
        string requestBody = contactRequest.requestBody.toString();
        //Deserializing the request body and initializing the list of contacts to update
        list<contact> contactsToUpdate = (list<contact>) JSON.deserialize(requestBody, list<contact>.class);
        //updating the contacts with partial success enabled
        Database.SaveResult[] updateResults = Database.update(contactsToUpdate,false);
        //checking the results of update operation on each contact
        for(Database.SaveResult updateResult : updateResults ){
            //Initializing the response wrapper class
            ResponseWrapper wrapper = new ResponseWrapper();
            //checking if record update is success
            if(updateResult.isSuccess()){
                //update is success, setting up the appropriate message
                wrapper.success='1';
                wrapper.message='Successfully updated contact with Id : '+ updateResult.getId();

            }
            else {
                //update failed, getting errors and setting up the error message in the response wrapper 
                wrapper.success='0';
                for(Database.Error error : updateResult.getErrors()){
                    wrapper.message='The following error has occured for contact with Id '+updateResult.getId();
                    wrapper.message+=error.getStatusCode()+' : '+error.getMessage()+' . ';
                    wrapper.message+='COntact field that effected this error : '+error.getFields();
                }
            }
            responseWrapperList.add(wrapper);

        }
        return responseWrapperList;
    }
}