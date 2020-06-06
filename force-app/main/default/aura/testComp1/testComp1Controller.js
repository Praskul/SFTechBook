({
doInit : function(component, event, helper) {
var date = new Date();
    alert(date);
component.set("v.datetime", date)
}
})