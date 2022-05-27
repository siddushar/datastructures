class Node
  attr_accessor :val, :next_node
  def initialize(val, next_node)
      @val = val
      @next_node = next_node
  end
end

class MyStack

  def initialize()
    @top = nil
  end

  def push(value)
    @top = Node.new(value, @top)
  end
  alias_method :"<<", :push


  def pop
    raise "Stack is empty" if is_empty?
    value = @top.val
    @top = @top.next_node
    value
  end

  def peek
    @top.val
  end

  def is_empty?
    @top.nil?
  end

end

stack = MyStack.new()
stack.push("google")

stack.push("udemy")
stack.push("stack")
