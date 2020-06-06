({
	fetchContacts : function(component, event, helper) {
		var action = component.get("c.getContacts");
        var accountIds=  component.get("v.recordId");
        action.setParams({
            accountId : accountIds
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            
            if(state==='SUCCESS'){
                var contactList = response.getReturnValue();
                console.log('Value in contactList is '+ contactList);
            }
            else{
                alert ('Something went wrong. Please do check the logs');
            }
        });
        $A.enqueueAction(action);
        
	}
})