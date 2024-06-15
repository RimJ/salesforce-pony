trigger PracticeTrig5 on Account (before delete) {
	
    List<Account> acctList = [Select id, (select id from Contacts) from Account where id in :Trigger.old];
    Map<id,account> mapAcc = new Map<id,account>(acctList);
    
    
    //List<contact> contList = [select id from Contact where Id IN ]
    for(Account acc: trigger.old){
        //List<Contact> contlist = new 
    	
        //List<contact> contlist = acc.Contacts;
        
        if(mapAcc.get(acc.id).contacts.size()>=2){
            acc.addError('Cannot delete an account with more than 1 contact');
                         
        }
    }
}