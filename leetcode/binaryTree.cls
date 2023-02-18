public class BinaryTree {
    public class Node{
        object data;
        Node left;
        Node right; 
        
        Node(object data, Node left, Node right){
            this.data=data;
            this.left=left;
            this.right=right;
        }
    }
    
    public static void display(Node node){
        if(node==null){
            return;
        }
        //node self work
        string str='';
        str+=node.left==null?'.':'node.left.data';
        str+='<- '+node.data+' -> ';
        str+=node.right==null?'.':'node.right.data';
        
        system.debug(str);
        display(node.left);
        display(node.right);
        
    }
    
    public static integer size(Node node){
        if(node==null){
            return 0;
        }
        
        integer nl=size(node.left);
        integer nr=size(node.right);
        integer ts=nl+nr+1;
        return ts;
    }
    
    public static integer sum(Node node){
        if(node==null){
            return 0;
        }
        integer ls=sum(node.left);
        integer rs=sum(node.right);
        integer ts=ls+rs+(integer)node.data;
        return ts;
    }
    
    public static integer max(Node node){
        if(node==null){
            return null;
        }
        integer lm=max(node.left);
        integer rm=max(node.right);
        integer tm=Math.max((integer)node.data, Math.max(lm, rm));
        return tm;
    }
    
    
    public static integer height(Node node){
        if(node==null){
            return 0; //-1 for edge , 0 for node
        }
        integer lh=height(node.left);
        integer rh=height(node.right);
        integer th=math.max(lh, rh)+1;
        return th;
    }
}