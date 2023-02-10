/**Given a string s, find the length of the longest 
substring
 without repeating characters.

 

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.

**/

public class LongestSubstringWithoutRepeat {

    public static integer longestSubString(string random){
        list<string> storeStrings=new List<string>();
        integer maxSubstringLength=0;
        for(string singleChar:random.split('')){
            if(storeStrings?.contains(singleChar)){
                storeStrings.clear();
                continue;
            }else{
                storeStrings.add(singleChar);
            }
             if(maxSubstringLength<storeStrings.size()){
                    maxSubstringLength=storeStrings.size();
                }
        }
        return maxSubstringLength;
    }
}