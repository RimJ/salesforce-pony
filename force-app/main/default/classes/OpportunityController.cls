public class OpportunityController {
    public static void updateProfile(List<Id> OppIds){
        for (Id oppId :  OppIds){
            Opportunity opp = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id= :oppID];
            if (opp.Amount < 10000){
                opp.Profile__c = 'Low';
            } else if(opp.Amount > 50000){
                opp.Profile__c = 'High';
            } else {
                opp.Profile__c = 'Medium';
            }
            update opp;
        }
        
        
    }
}