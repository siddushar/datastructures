
class Node
  
  attr_accessor :val, :next_node
  def initialize(val, next_node=nil)
      @val = val
      @next_node = next_node
  end
end

class MyQueue
  
  attr_accessor :head, :tail, :length
  def intialize
    self.head = nil 
    self.tail = nil 
    self.length = 0
  end

  def size
    self.length
  end

  def peek
    if self.head.nil?
      return -1
    end
    self.head.val
  end

  def is_empty?
    return self.length == 0
  end

  def enqueue(value)
    node = Node.new(value)

    if self.head.nil?
      self.head = new 
    else
      self.tail.next_node = node
    end

    self.length += 1
    self.tail = node
  end


  def dequeue
    return  "Queue is empty" if is_empty?

    temp = self.head
    self.head = self.head.next_node
    self.tail = nil if self.head.nil?
    temp.val
  end
end
