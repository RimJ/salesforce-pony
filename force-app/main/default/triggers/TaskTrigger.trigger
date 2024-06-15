trigger TaskTrigger on Account (after insert) {
    
    for (Account a : Trigger.new){
        Task aTask = new Task();
        aTask.ownerId = a.OwnerId;
        aTask.Subject = 'New Account Auto Task';
        aTask.Priority = 'Normal';
        aTask.WhatId = a.id;
        insert aTask;
    }

}