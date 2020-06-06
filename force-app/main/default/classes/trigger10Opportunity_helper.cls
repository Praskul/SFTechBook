public with sharing class trigger10Opportunity_helper {

    public static void before_Insert(list<Opportunity> oppList, map<id,Opportunity> newMaps, map<id,Opportunity> oldMaps){

        list<Opp_child__c> ocList = new list<Opp_child__c>();
        
        for(Opportunity opp : oppList){


            if (opp.StageName=='Closed Won' && newMaps.get(opp.id).StageName!=oldMaps.get(opp.id).StageName) {
                Opp_child__c oc = new Opp_child__c();
                oc.name=opp.name;
                oc.Opportunity__c=opp.id;
                ocList.add(oc);
            }
        }
        insert ocList;
    }
}