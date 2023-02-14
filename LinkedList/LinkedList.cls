public class LinkedList {

    //each cell in a linkedlist is denoted as a node and it contains data and a pointer to next element.
    public class Node {
        public object data;
        public Node next;
    }


    public Node head;  //this denotes first element of a linkedList
    public Node tail;   //this denotes the last element of a linkedList
    public integer size=0;
    
    //add element to end of the linkedList
    public void addLast(object val){
        Node temp=new Node();
        temp.data=val;
        temp.next=null;
        if(size==0){
            head=temp;
            tail=temp;
        }else{
            tail.next=temp;
            tail=temp; 
        }
        size++;
    }
    

    //display all the items of the linkedList
    public list<Object> display(){
        list<Object> displayLinkedListValues=new list<Object>();
        Node temp=head;
        while(temp!=null){
            displayLinkedListValues.add(temp.data);
            temp=temp.next;
            system.debug(temp);
            
        }
        return displayLinkedListValues;
    }
    

    //display the size of the linkedlist
    public integer size(){
        return size;
    }
    
    
    //remove first element
    public object removeFirst(){
        Node temp=new Node();
        if(size==0){
            return null;
        }else if(size==1){
            temp=head;
            head=null;
            tail=null;
            return temp.data;
        }else{
             temp=head;
             head=head.next;
        } 
        size--;
        return temp.data;
    }
    
    
    //get last element 
    public object getLast(){
        if(size==0){
            return null;
        }
        return tail.data;
    }
    
    //get value  at index
    public object getAt(integer idx){
        if(size==0 || idx>=size || idx<0){
            return null;
        }else{
            Node temp= head;
            for(integer i=0;i<idx;i++){
                temp=temp.next;
            }
            return temp.data;
        }
    }
    
    
    //add first element
    public void addFirst(object newData){
        //create a new node
        Node temp=new Node();
        //store the data
        temp.data=newData;
        //point it to current head 
        temp.next=head;
        //declare temp node as new head
        head=temp;
    }
    
    
}