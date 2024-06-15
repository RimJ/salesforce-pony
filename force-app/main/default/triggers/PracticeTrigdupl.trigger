trigger PracticeTrigdupl on Account (before insert) {
		
    List<Account> acctList = [Select name from account];
    Map<String,Account> mapacct = new Map<String,Account>();
    
    for (account a : acctList ){
        mapacct.put(a.name, a);
    }
    
    if (mapacct != null){
        
        for (account a: Trigger.new){
            
            if (mapacct.containsKey(a.Name)){
                a.adderror('Cannot create duplicate account name');
            }
        }
    }
    
    
}