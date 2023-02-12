public class ValidParentheses {    
    public static Boolean isValidViaList(String s) {
        list<string> snak=new list<string>();
        for (String c : s.split('')) {
            if (c == '(' || c == '{' || c == '[') {
                snak.add(c);
            } else {
                if (snak.isEmpty()) return false;
                string top = snak.remove(snak.size() - 1);
                if (!((c == ')' && top == '(') || (c == '}' && top == '{') || (c == ']' && top == '['))) return false;
            }
        }
        return snak.isEmpty();
    } 
}