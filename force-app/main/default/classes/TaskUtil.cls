public class TaskUtil {
    public static string getTaskPriority(string leadState){
        
        if(string.isBlank(leadState) || leadState.length()>2){
            return null;
        }
        string taskPriority;
        
        if(leadState=='CA'){
            taskPriority='High';
        }
        else{
            taskPriority='Normal';
        }
        return taskPriority;
    }
}