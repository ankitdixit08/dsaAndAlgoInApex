// This class implements a solution to group anagrams together.
public class groupAnagrams {

    // This method takes a list of strings as input and returns a list of lists, where each list
    // contains all the anagrams from the input list.
    public static List<List<String>> groupAnagrams(List<String> strs) {

        // Create a map to store the anagrams.
        Map<String, List<String>> mapToReturn = new Map<String, List<String>>();

        // Loop through all the strings in the input list.
        for (String str : strs) {

            // Split the string into individual characters.
            List<string> chars = str.split('');

            // Sort the characters.
            chars.sort();

            // Concatenate the sorted characters and use it as the key in the map.
            String key = String.valueOf(chars);

            // If the key does not exist in the map, create a new list for it.
            if (!mapToReturn.containsKey(key)) {
                mapToReturn.put(key, new List<String>());
            }

            // Add the string to the list associated with the key.
            mapToReturn.get(key).add(str);
        }

        // Return the values of the map as a list of lists.
        return new List<List<String>>(mapToReturn.values());
    }
    
}


/**

The time complexity of the given code is O(nklogk), where n is the size of the input list "strs" and k is the maximum length of a string in the list. This is because for each string, the code sorts the characters, which takes O(klogk) time, and then inserts the string into a map, which takes O(1) time on average. So, the total time complexity is O(nklogk).

The space complexity of the given code is O(nk), where n is the size of the input list "strs" and k is the maximum length of a string in the list. This is because the code stores all the strings in a map, where each key is a sorted string and its value is a list of strings that are anagrams of the key. So, the space complexity is proportional to the total number of characters in the input list, which is nk.




 */
