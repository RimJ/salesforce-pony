public class ExampleController {
    
    DateTime t1;
    transient DateTime t2;

    public String gett1(){
      if (t1 == null) 
          t1 = System.now();
      return ' ' + t1;    
      
    }
    

    public String gett2(){
      if (t2 == null) 
          t2 = System.now();
      return ' ' + t2;    
      
    }
    
}