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
    
    //three sum is same as 2 sum , we just need to fix the first element
    public static list<list<integer>> threeSum(list<integer> nums,integer target){
        list<list<integer>> resultToReturn=new List<list<integer>>();
        //sort the list
        nums.sort();
        //fix the first element
        for(integer a=0;a<nums.size()-2;a++){
            //skip duplicates
            if(a>0 && nums[a]==nums[a-1]){
                continue;
            }
            //set start to a+1
            integer b=a+1;
            //set end to size()-1
            integer c=nums.size()-1;
            while(b<c){
                if(nums[a]+nums[b]+nums[c]>target){
                    c--;
                }else if(nums[a]+nums[b]+nums[c]<target){
                    b++;
                }else{
                    //if target is a match then add it to return list
                    resultToReturn.add(new List<Integer>{nums.get(a), nums.get(b), nums.get(c)});

                    //if current b element is same as previous then increment b
                    while (b < c && nums.get(b) == nums.get(b + 1)) {
                        b++;
                    }
                    // if current c element is same as previous then decrement c
                    while (b < c && nums.get(c) == nums.get(c - 1)) {
                        c--;
                    }
                    b++;
                    c--;
                }
            }
        }
        
        return resultToReturn;
    }
}