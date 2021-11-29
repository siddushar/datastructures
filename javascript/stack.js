// Stacks can be implemented using 
  // Arrays:
    

  // Linked lists:

// Stacks can be implemented using 
  // Arrays:
    

  // Linked lists:

class Node{
  constructor(value) {
    this.value = value;
    this.next = null
  }
}

class Stack {
   constructor() {
     this.top = null;
     this.bottom = null;
     this.length = 0
   }
  
  peek(){
    return this.top;
  }
  
  push(value){
    const newNode = new Node(value);
    
    if(this.length === 0) {
      this.top = newNode;
      this.bottom = newNode;
    } else {
      const holdingPointer = this.top;
      this.top = newNode;
      this.top.next = holdingPointer;
    }
    this.length++;
    return this;
  }
  
  pop() {
    if(!this.top) {
      return null;
    }
    
    if(this.top == this.bottom) {
      this.bottom = null
    }
    // const poppingItem = this.top;
    this.top = this.top.next;
    this.length--;
    return this;
  }
  
  
}


const myStack = new Stack();
myStack.push("google");
myStack.push("udemy");
myStack.push("discord");
console.log(myStack)
myStack.pop();
myStack.pop();
myStack.pop();
console.log(myStack)





// Queues can be implemented using 
  // Arrays: removing elements can be constly if we use arrays to impl queue because after removing first element,
  //         re-indexing needs to be done
  // Linked lists: removing elements can be easily done





// Queues can be implemented using 
  // Arrays: removing elements can be constly if we use arrays to impl queue because after removing first element,
  //         re-indexing needs to be done
  // Linked lists: removing elements can be easily done
