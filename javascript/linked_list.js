class Node {
  constructor(value) { 
    this.value = value;
    this.next = null;
  }
}

// Linked list operations
class LinkedList {
 constructor(value) {
   this.head = { 
      value: value,
     next: null
   }
   this.tail = this.head;
   this.length = 1;
 }
 
 // add to the end
 append(value) {
   const  new_node = new Node(value)
   
   this.tail.next = new_node;
   this.tail = new_node;
   this.length++;
   return this;
 }
 
 // add to the beiging
 prepend(value) {
   const  new_node = new Node(value)
   
   new_node.next = this.head
   this.head = new_node
   this.length++;
   return this;
 }
 
 // Insert at specific index
 
}
  
  let list = new LinkedList(10);
  list.append(5)
  list.append(14)
  console.log(list)
  list.prepend(15)
  console.log(list)
