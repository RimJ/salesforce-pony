trigger oppacctrig4 on Account (before update) {
    
    
    for (Account acc: trigger.new){
        if (acc.phone != Trigger.oldMap.get(acc.id).phone){
            acc.Phone = acc.Name + ' ' + acc.Phone;
        }
    }
    

}