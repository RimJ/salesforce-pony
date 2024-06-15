trigger PracticeTrig6 on Lead (before insert, before update) {
    
    
    List<Contact> contList = [Select id, email from contact];
    Map<String, Contact> mapCon = new Map<String, Contact>();
    
    for(Contact con : contList){
        
        mapCon.put(con.email, con);
    }	
    
 
    for(Lead ld : trigger.new){
     
        if((ld.email != null) &&(trigger.isinsert || (ld.email != trigger.oldMap.get(ld.id).email)) )
        if (mapCon.containsKey(ld.Email) ){
            ld.adderror('Email already exists');
        }
}
}