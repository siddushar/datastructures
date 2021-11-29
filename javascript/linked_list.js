class Node {
  constructor(value) { 
    this.value = value;
    this.next = null;
  }
}

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
 insert(value, index) {
   const  new_node = new Node(value)
   
   if (index >= this.length) {
     this.append(value);
     return this.printList();
   }
   
   if (index === 0) {
      this.prepend(value);
      return this.printList();
    }
   
   const leader =this.traverseToIndex(index-1);
   
   new_node.next = leader.next
   leader.next = new_node
   return this.printList();
 }
 
 
 traverseToIndex(index) {
   let count = 0;
   let currentNode = this.head
   
   while(count !== index) {
     currentNode = currentNode.next
     count++;
   }
   return currentNode;
 }
 
 printList() {
   const arr = []
   let currentNode = this.head;
   
   while(currentNode !== null) {
     arr.push(currentNode.value)
     currentNode = currentNode.next
   }
   this.length++;
   return arr;
 }
 
 remove(index) {
   if(index > this.length) {
     throw "List not long enough";
   }
   const leader = this.traverseToIndex(index-1);
   const unwanted = leader.next
   leader.next = unwanted.next
   this.length--;
   return this.printList();
 }
  
  reverse() {
   if (!this.head.next) {
     return this;
   }
    
    let first = this.head
    let second = this.head.next
    this.tail = this.head
    
    while(second) {
      const temp = second.next
      second.next = first
      first = second
      second = temp
    }
    this.head.next = null
    this.head = first
 }
 
}
  
  let list = new LinkedList(10);
  list.append(5)
  list.append(14)
  list.prepend(15)
  list.insert(99, 2)
  list.insert(100, 123)
  list.remove(92)
  console.log(list.printList())
  list.reverse
  console.log(list.printList())
 
