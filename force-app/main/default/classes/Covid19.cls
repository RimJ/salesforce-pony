public class Covid19 {
    public integer recoveredInArea = 0;
    public static integer recoveredInCountry = 0;
    
    public void treatPatient(){
        recoveredInArea++ ;
        recoveredInCountry++ ;
        
    }
    
    public static void printTreated(){
        System.debug('Recovered in the country' + recoveredInCountry);
    }

}