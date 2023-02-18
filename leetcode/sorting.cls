public class sorting {
    
    //bubble Sort -> compare adjacent elements and if the jth element is greater that j+1, then swap, until the end of iteration is reached
    public static list<integer> bubbleSort(list<integer> unsortedList){
        //{78,76,0,1,3,4,5,32,59
        for(integer i=1;i<=unsortedList.size()-1;i++){
            for(integer j=0;j<unsortedList.size()-i;j++){
                if(unsortedList.get(j)>unsortedList.get(j+1)){
                    integer temp=unsortedList.get(j+1);
                    unsortedList.set(j+1,unsortedList.get(j));
                    unsortedList.set(j, temp);
                    
                }
            }
        }
        
        return unsortedList;
    }
    //code is O(n^2), and the space complexity is O(1).\
    
    
    
    //{78,76,0,1,3,4,5,32,59}
    //selection sort -> start from 0 , find the minimum from j and swap it with ith.
    public static list<integer> selectionSort(list<integer> unsortedArray){
        for(integer i=0;i<unsortedArray.size()-1;i++){
            integer min=i;
            for(integer j=i+1;j<unsortedArray.size();j++){
                if(unsortedArray[min]> unsortedArray[j]){
                    //set new min;
                    min=j;
                }
            }
            //swap min with i
            integer temp=unsortedArray[min];
            unsortedArray.set(min, unsortedArray.get(i));
            unsortedArray.set(i, temp);
            
        }
        return unsortedArray;
    }
    
    //O(n^2)
    //sc: O(1)
    // //{78,76,0,1,3,4,5,32,59}
    public static list<integer> insertionSort(list<integer> listToSort){
        
        for(integer i=1;i<listToSort.size();i++){
            for(integer j=i-1;j>=0;j--){
                if(listToSort[j+1]<listToSort[j]){
                    integer temp=listToSort[j+1];
                    listToSort[j+1]=listToSort[j];
                    listToSort[j]=temp;
                }else{
                    break;
                }
            }
        }
        return listToSort;
    }
    
    /**
* list<integer> randomNumber=new list<integer>{78,76,0,1,3,4,5,32,59};
* system.debug(sorting.insertionSort(randomNumber));
* 
* **/
    //merge sorted array
    public static list<integer> mergeTwoSortedArrays(list<integer> list1, list<integer> list2){
        list<integer> result=new list<integer>();
        integer i=0;
        integer j=0;
        
        //{1,2,4,5,6,10,53}
        //{3,7,8,9,11,12,40}
        //{1,2,3..}
        while(i<list1.size() && j<list2.size()){
            if(list1[i]<list2[j]){
                result.add(list1[i]);
                i++;
            }else{
                result.add(list2[j]);
                j++;
            }
        }
        
        while(i<list1.size()){
            result.add(list1[i]);
            i++;
        }
        while(j<list2.size()){
            result.add(list2[j]);
            j++;
        }
        return result;
    }
    
    //merge sort 
    public static list<integer> mergeSort(list<integer> arr , integer lo, integer hi){
        //base case
        if(lo==hi){
            list<integer> res=new list<integer>{arr[lo]};
                return res;
        }
        integer mid=(lo+hi)/2;
        list<integer> fsh=mergeSort(arr, lo, mid);
        list<integer> ssh=mergeSort(arr, mid+1, hi);
        list<integer> result=mergeTwoSortedArrays(fsh, ssh);
        return result;
    }
    
    //time complexity O(nLogn)
    //Space complexity O(n)
    
    public static list<integer> partitionArray(list<integer> arr, integer low, integer high){
        integer start=0;
        integer endPos=arr.size()-1;
        for(integer i=0;i<arr.size()-1;){
            if(arr[i]<low){
                integer temp=arr[i];
                arr[i]=arr[start];
                arr[start]=temp;
                start++;
                i++;
            } else if(arr[i]>high){
                integer temp=arr[i];
                arr[i]=arr[endPos];
                arr[endPos]=temp;
                endPos--;
            } else {
                i++;
            }
            
        }
        return arr;
    }
    
    //{40,23,10,29,2} i=0, con= 40>29
    //{2,23,10,29,40} i=0 , endpos=4
    //{2,23,10,29,40} i=1, endpos=4
    //{2,23,10,29,40} i=2, endpos=4
    //{2,23,10,29,40} i=3, endpos-4
    //{2,23,10,29,40} i=4, endpos-4
    public static list<integer> partitionOneArray(list<integer> arr, integer pivot){
        integer endPos=arr.size()-1;//5
        for(integer i=0;i<arr.size();){
            if(arr[i]>pivot){
                integer temp=arr[i];
                arr.set(i,arr[endPos]);
                arr.set(endPos,temp);
                endPos--;
            }else{i++;}
        }
        return arr;
    }
    
    public static integer pivotOfPartitionArray(list<integer> arr, integer pivot){
        integer endPos=arr.size()-1;//5
        for(integer i=0;i<arr.size();){
            if(arr[i]>pivot){
                integer temp=arr[i];
                arr.set(i,arr.get(endPos));
                arr.set(endPos,temp);
                endPos--;
            }else{i++;}
        }
        return endPos;
    }
    
    public static void quickSort(list<integer> arr, integer low, integer high) {
        if(low>high){
            return;
        }
        // partition the array
        integer pivot = arr[high];
        integer pivotIndex = pivotOfPartitionArray(arr, pivot);
        
        // recursively sort the left and right sub-arrays
        quickSort(arr, low, pivotIndex - 1);
        quickSort(arr, pivotIndex + 1, high);
    }
    
}