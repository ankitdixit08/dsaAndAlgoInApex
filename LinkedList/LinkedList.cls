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
        //increase the size
        size++;
    }
    
    
    //add at index
    public void addAt(integer idx, object value){
        if(idx<0 || idx>size){
            return;
        }else if(size==0){
            addFirst(value);
        }else if(size==idx){
            addLast(value);
        }else{
            Node newNode=new Node();
            newNode.data=value;
            
            node temp=head;
            for(integer i=0;i<idx-1;i++){
                temp=temp.next;
            }
            newNode.next=temp.next;
            temp.next=newNode;
            size++;
        }
        
    }
    
    //remove last element from the list
    public void removeLast(){
        if(size==0){
            return;
        }else if(size==1){
            tail.data=null;
            tail.next=null;
            head=tail;
            size=0;
        }else{
            Node temp=head;
            for(integer i=0;i<size-2;i++){
                temp=temp.next;
            }
            tail=temp;
            tail.next=null;
            size--;
        }
    }
    
    private node getNodeAt(integer idx){
        if(size==0 || idx>=size || idx<0){
            return null;
        }else{
            Node temp= head;
            for(integer i=0;i<idx;i++){
                temp=temp.next;
            }
            return temp;
        }
    }
    
    //reverse linkedlist data 
    public void reverseDi(){
        integer  li=0;
        integer ri=size-1;
        while(li<ri){
            Node left=getNodeAt(li);
            Node right=getNodeAt(ri);
            
            object temp=left.data;
            left.data=right.data;
            right.data=temp;
            li++;
            ri--;
        }
        
    }
    
    
    //reverse linkedList data pointer iterator
    public void reversePi(){
        Node prev=null;
        Node curr=head;
        while(curr!=null){
            node nextNode=curr.next;
            curr.next=prev;
            prev=curr;
            curr=nextNode;
        }
        Node temp=head;
        head=tail;
        tail=temp;
    }
    
    //remove at index
    public void removeAt(integer idx){
        if(idx>size || size==0 || idx<0){
            return;
        }else{
            Node temp=head;
            for(integer i=0;i<idx-1;i++){
                temp=temp.next;
            }
            temp.next=temp.next.next;
            size--;
        }
    }
    
    
}



/**
 * call linkedlist
linkedList ll=new LinkedList();
ll.addLast(5);
ll.addLast(4);
ll.addLast(25);
ll.addLast(56);
ll.addLast(54);
ll.addLast(75);
ll.addLast(85);

system.debug(ll);
//ll.addAt(2,17);
//ll.removeLast();
ll.removeAt(2);
system.debug(ll);
 * 
 * 
 * 
 */