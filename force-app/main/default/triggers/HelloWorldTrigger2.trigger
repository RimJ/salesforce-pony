trigger HelloWorldTrigger2 on Account (before insert) {
    
    for (Account a : Trigger.new){
        a.description = 'New Description from Trigger';
    }

}