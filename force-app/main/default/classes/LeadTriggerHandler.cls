public class LeadTriggerHandler {
    public static void beforeInsertHandler(List<Lead> leadRecords){
        for(Lead leadRecord : leadRecords){
                if(String.isBlank(leadRecord.LeadSource)){
                    leadRecord.LeadSource = 'Other';
                }
                // validation rules on Industry fields
                if(String.isBlank(leadRecord.Industry)){
                    leadRecord.addError('The industry field cannot be blank');
                }
    }
    }
    
    public static void afterInsertHandler(List<Lead> leadRecords){
        List<Task> leadTasks = new List<Task>();
            for (Lead leadRecord : leadRecords){
                Task leadTask = new Task(Subject='Follow up on Lead task', WhoId=leadRecord.Id);
                leadTasks.add(leadTask);
            }
            insert leadTasks;
    }
    
    public static void beforeUpdateHandler(List<Lead> leadRecords, Map<Id,Lead> oldRecsMap){
        for(Lead leadRecord : leadRecords){
                if(String.isBlank(leadRecord.LeadSource)){
                    leadRecord.LeadSource = 'Other';
                }
                if((leadRecord.Status == 'Closed - Converted' || leadRecord.Status == 'Closed - Not Converted') && oldRecsMap.get(leadRecord.Id).Status == 'Open - Not Contacted'){
                    leadRecord.Status.addError('You cannot directly close an open lead record');
                }
            }
    }
}