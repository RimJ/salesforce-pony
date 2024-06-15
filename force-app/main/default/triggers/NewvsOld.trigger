trigger NewvsOld on Account (after update) {
    
    for (integer i = 0; i<trigger.new.size(); i++){
        if (trigger.old[i].phone != trigger.new[i].phone){
            trigger.new[i].description ='Old phone number is' + trigger.old[i].phone + ' And the new phone number is' + trigger.new[i].phone;
        }
    }

}