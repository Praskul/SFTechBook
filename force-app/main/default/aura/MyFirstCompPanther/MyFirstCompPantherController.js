({
	doAdd : function(component, event, helper) {
	var number1 = component.get('v.number1');
    var number2 = component.get('v.number2');
    var final = add(number1,number2);
        component.set('v.Final',final);

},
    doSub : function(component, event, helper) {},
    doMult : function(component, event, helper) {},
    doDiv : function(component, event, helper) {}
})