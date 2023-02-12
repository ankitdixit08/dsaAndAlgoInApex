public class longestSequence {
    public static integer findLongestSequence(list<integer> randomArray){
        // create a map and set all values to true
        Map<integer, boolean> fm=new Map<integer, boolean>();
        for(integer i:randomArray){
            fm.put(i, true);
        }
        system.debug('@@1'+fm);
        //if key is not start of sequence populate false
        for(integer i:fm.keyset()){
            if(fm.containsKey(i-1)){
                fm.put(i,false);
            }
        }
        
        system.debug('@@2'+fm);
        
        //find the longest sequence
        integer ml=0;
        integer msp=0;
        for(integer i:fm.keySet()){
            if(fm.get(i)==true){
                integer tl=1;
                integer tsp=i;
                while(fm.containsKey(tsp+tl)){
					tl++;                    
                }
                system.debug('main'+tl+' '+ml);
                
                if(tl>ml){
                    msp=tsp;
                    ml=tl;
                }
            }
        }
        return ml;
        
        
    }
}