({
	addition : function(component, event, helper) {
		var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        var output =component.set('v.output', parseInt(number1)+parseInt(number2));
       // alert(parseInt(number1)+parseInt(number2));
        //alert(number);
	}
}),
    
({
	substraction : function(component, event, helper) {
		var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        var output =component.set('v.output', (parseInt(number1)-parseInt(number2)));
	}
}),
    
({
	multiplication : function(component, event, helper) {
		var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        var output =component.set('v.output', parseInt(number1)*parseInt(number2));
	}
}),

({
	division : function(component, event, helper) {
		var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        var output =component.set('v.output', parseInt(number1)/parseInt(number2));
	}
})