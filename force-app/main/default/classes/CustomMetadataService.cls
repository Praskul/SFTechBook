public class CustomMetadataService {
	
     public CustomMetadataService(){}
     
     public Support_Tier__mdt getCustomMetadataRecord(string name){
         Support_Tier__mdt supportTiers1 = new Support_Tier__mdt();
         supportTiers1.DeveloperName = name;
         return supportTiers1;
     }
     
     public Support_Tier__mdt getChangedCustomMetadataRecord(string newName){
        Support_Tier__mdt supportTiers1 = [select id,developername from Support_Tier__mdt limit 1 ];
         supportTiers1.DeveloperName = newName;
         return supportTiers1;
     }
}