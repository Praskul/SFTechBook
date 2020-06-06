({
    doInit : function(component, event, helper) {

        var action = component.get('c.getContactList');
        action.setParams({
            accountId : component.get('v.recordId'),
        });

        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
                console.log('Response value from the server side is ',responseValue );
                component.set('v.contactList',responseValue);
        },'SUCCESS');
       

        $A.enqueueAction(action);
    },

    doRedirect : function(component, event, helper) {
        var eventSource = event.getSource();
        var id = eventSource.get('v.name');
        alert(id);
        alert(id);
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
          "recordId": id,
          "slideDevName": "detail"
        });
        navEvt.fire();

    }
})