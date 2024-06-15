trigger practiceTrig7 on Opportunity (after update) {
		
    Set<Id> setAcc = new Set<Id>();
    Map<Id,Opportunity> mapOpp = new Map<Id,Opportunity>();
    for (Opportunity opp: trigger.new){
        setAcc.add(opp.AccountId);
        mapOpp.put(opp.accountId, opp);
    }
    
    List<Account> accList = [Select Id, shippingcity from Account where Id IN :setAcc];
    //Map<id,Account> mapAcc = new Map<id,Account>(accList);
    
    //Map<Id,Opportunity> mapOpp = new Map<Id,Opportunity>();
    
    
    for (Account Acc: accList){
         
        Acc.shippingCity = mapOpp.get(acc.id).city__c;
        
    }
    
    update accList;
}