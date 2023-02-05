public class groupAnagrams {
    public static List<List<String>> groupAnagrams(List<String> strs) {
        Map<String, List<String>> mapToReturn = new Map<String, List<String>>();
        for (String str : strs) {
            List<string> chars = str.split('');
            chars.sort();
            String key = String.valueOf(chars);
            if (!mapToReturn.containsKey(key)) {
                mapToReturn.put(key, new List<String>());
            }
            mapToReturn.get(key).add(str);
        }
        return new List<List<String>>(mapToReturn.values());
    }
    
}
