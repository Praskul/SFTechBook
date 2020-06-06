({
	doClick : function(component, event, helper) {

        var mapList = [];
        for(var i; i<5; i++){
            mapList.add(i);
        }
        component.set('mapList',numberList);
	}
})