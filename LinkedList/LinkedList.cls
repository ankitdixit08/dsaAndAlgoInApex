public class LinkedList {

    public class Node {
        public object data;
        public Node next;
    }


    public Node head;
    public Node tail;
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
            
        }
        return displayLinkedListValues;
    }
    

    //display the size of the linkedlist
    public integer size(){
        return size;
    }
}