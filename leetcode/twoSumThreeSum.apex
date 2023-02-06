public class twoSumThreeSum {
    //two sum problem,
    public static list<list<integer>> twoSum(list<integer> randomList, integer target){
        list<list<integer>> resultToReturn=new List<list<integer>>();
        //1. sort the array 
        randomList.sort();
        
        //2. initialize the loop variables
        integer i=0;
        integer j=randomList.size()-1;
    		
        //3. run the loop
        while(j>i){
            if(randomList[i]+randomlist[j]>target){
                j--;
            }else if(randomList[i]+randomlist[j]<target){
                i++;
            }else{
                list<integer> result=new list<integer>();
                result.add(randomList[i]);
                result.add(randomList[j]);
                resultToReturn.add(result);
                j--;
                i++;
            }
        }
        return resultToReturn;
    }
}

//time complexity O(n)
//space complexity O(n)