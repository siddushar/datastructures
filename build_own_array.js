
class MyArray {
  constructor(){
    this.length = 0
    this.data = {}
  }

  get(index) {
    this.data[index];
  }

  push(item) {
    this.data[this.length] = item;
    this.length++;
  }

  pop() {
    const last = this.data[this.length-1];
    delete this.data[this.length-1];
    this.length--;
    return last
  }

  delete(index){
    const item = this.data[index];
    this.shiftItems(index) 
    return item;
  }

  shiftItems(index) {
    for(let i = index; i < this.length-1; i++) {
      this.data[i] = this.data[i+1]
    }
    delete this.data[this.length-1]
    this.length--;
  }
}

arr = new MyArray
arr.push("hi")
arr.push("you")
arr.push("!")
console.log(arr)
// arr.pop()
arr.delete(0)
arr.push("are")
arr.push("nice")
console.log(arr)
arr.delete(1)
console.log(arr)
