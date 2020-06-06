({
	onCaptChange : function(component, event, helper) {
	
	var selectedVal = component.find("cap").get('v.value');;
    alert('You have selected '+selectedVal);
    }
   
})