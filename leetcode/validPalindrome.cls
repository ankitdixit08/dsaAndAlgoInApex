public class validPalindrome {
    public static boolean isValidPalindrome(string sampleString){
	
        list<string> sampleStringCopy=sampleString.replace(' ','').split('');
       list<string> reversedString=new list<string>();
        for(integer i=sampleStringCopy.size()-1;i>=0;i--){
			reversedString.add(sampleStringCopy[i]);
        }
        if(sampleStringCopy==reversedString){
            return true;
        }
        return false;
            
            
        
    }
}