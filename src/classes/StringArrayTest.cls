public class StringArrayTest {
    public static List<String> generateStringArray(Integer numberReturn){
      List<String> genArray = new List<String>();
        
      for(Integer i=0; i < numberReturn; i++){
          genArray.add('Test ' + i);
          System.debug(genArray.get(i));
      }
      return genArray;
    }
}