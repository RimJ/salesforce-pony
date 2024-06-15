trigger PracticeTrig3 on Opportunity (after insert, after update) {
    
    List<Account> acctList = new List<Account>();
    Set<id> acctIds = new Set<Id>();
    
    if(trigger.new != null){
    for (Opportunity opp: trigger.new){
        if(opp.stageName == 'Closed Won'){
            acctIds.add(opp.AccountId);
        }
    }
    }
    
    List<Account> resultAcct = [Select Id, Rating from Account where Id IN :acctIds];
    
    if (resultAcct != null){
        for(Account acc: resultAcct){
        acc.Rating = 'Hot';
        acctList.add(acc);
    }
    
    update acctList;

    }
    
}