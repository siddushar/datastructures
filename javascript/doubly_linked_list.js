class Node {
  constructor(value) {
    this.value = value;
    this.previous = null;
    this.next = null;
  }
}

class DoublyLinkedList {
  constructor(value) {
   this.head = { 
     value: value,
     next: null,
     prev: null
   }
   this.tail = this.head;
   this.length = 1;
 }
  
  append(value) {
    const newNode = new Node(value);
    newNode.prev = this.tail;
     this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
    return this;
  }
  
  prepend(value) {
    const newNode = new Node(value);
    // let old_node = this.head
    newNode.next = this.head;
    this.head.prev = newNode;
    this.head = newNode;
   
    this.length++;
     console.log(this.length)
    return this;
  }
  
  printList(){
   const arr = []
   let currentNode = this.head;
   
   while(currentNode !== null) {
     arr.push(currentNode.value)
     currentNode = currentNode.next
   }
   this.length++;
   console.log(arr)
   return arr;
  }
  
  insert(index, value) {
    let newNode = new Node(value);
    const leader = this.traverseToIndex(index-1);
    const follower =  leader.next;
    leader.next = newNode;
    newNode.prev = leader;
    newNode.next = follower;
    follower.prev = newNode;
    this.length++;
    return this;
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
  
  remove(index) {
    if(index > this.length) {
      throw "List not long enough";
    }
   const leader = this.traverseToIndex(index-1)
   const unwated = leader.next;
   leader.next = unwated.next;
   unwated.prev = leader
   this.length--;
   return this;
  }
  
  
} 


dl = new DoublyLinkedList(10)
dl.append(5)
dl.append(16)
dl.prepend(1)
dl.insert(2, 90)
dl.remove(1)
dl.printList()
