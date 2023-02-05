public class ProductOfArrayExceptSelf {
    public static list<integer> giveProducts(list<integer> randomList){
        list<integer> listToReturn=new List<integer>();
        integer totalProduct=1;
        for(integer a:randomList){
            totalProduct*=a;
        }
        for(integer a:randomList){
            listToReturn.add(totalProduct/a);
        }
        return listToReturn;
    }
    public static list<integer> giveProductsWithOutDivision(list<integer> randomList){
        //[1,2,3,4]
          list<integer> listToReturn=new List<integer>();
          integer productOfAllBeforeCurrent=1;
          integer productOfAllAfterCurrent=1;
        for(integer i=0;i<randomlist.size();i++){
            listToReturn.add(productOfAllBeforeCurrent);
            productOfAllBeforeCurrent *=randomList[i];
        }
        //listToReturn = [1,1,2,6]
        for(integer i=randomList.size()-1;i>=0;i--){
            listToReturn[i]*=productOfAllAfterCurrent;
            productOfAllAfterCurrent*=randomList[i];
            
        }
        //listToReturn=[24,12,8,6]
     	  return listToReturn;
    }
}