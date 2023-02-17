public class removePrimeNubers{
    public static list<integer> removePrime(list<integer> randomList){
        //traverse the list backward as the index will be removed if condition matches
        for(integer i=randomList.size()-1;i>=0;i--){
                if(isPrime(randomList.get(i))){
                    randomList.remove(i);
                }
        }
        return randomList;
    }

    private static boolean isPrime(integer i){
        for(integer j=2; j*j<=i;j++){
            if(math.mod(i, j)==0){
                return false;
            }
        }
        return true;
    }
}

//list<integer> randomNumber=new list<integer>{0,1,3,4,5,32,59};
//system.debug(removePrimeNubers.removePrime(randomNumber));


//time complexity O(n*sqr(m))
// space complexity O(1) since no extra space is getting used