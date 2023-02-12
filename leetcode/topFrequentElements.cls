/**
Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

Example 1:

Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]

@author: Ankit Kumar (salesforce)
 */
public class topFrequentElements {
    public static list<integer> topKElements(list<integer> randomlist, integer k){
        list<integer> listToReturn=new list<integer>();
        //frequency table
        map<integer, integer> frequencyMap=new map<integer,integer>();
        //add to frequency table
        for(integer i:randomList){
                frequencyMap.put(i,frequencyMap.containsKey(i)?frequencyMap.get(i)+1:1);
        }
        //{1=5, 2=3, 3=3, 4=1, 13=1, 21=1}
        //create a bucket List
        List<List<integer>> toStoreValue = new List<List<integer>>();
        for (Integer i = 0; i <randomlist.size()+1 ; i++) {
 		 toStoreValue.add(new List<integer>());
		}
        //add elements to bucket array
        for(integer i:frequencyMap.keyset()){
                list<integer> tempValues=new list<integer>();
                if(toStoreValue[frequencyMap.get(i)]!=null){
                    tempValues.addAll(toStoreValue[frequencyMap.get(i)]);
                }
                tempvalues.add(i);
                toStoreValue[frequencyMap.get(i)]=tempvalues;
			
        }
        //((), (13, 21, 4), (), (2, 3), (), (1), (), (), (), (), ...)
        //iterate over the bucket array from back and store the list values in list to return
        integer count=0;
        for(integer i=toStoreValue.size()-1;i>=0;i--){
            if(count<=k){
                if(toStoreValue[i].size()>=1){
                    for(integer j:toStoreValue[i]){
                        listToReturn.add(j);
                         count++;
                    }
                }
            }
        } 
        system.debug('final result'+listToReturn);
        return listToReturn;
    }
}