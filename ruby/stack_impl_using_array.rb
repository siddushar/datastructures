class MyStack

  def initialize()
    @array = []
  end

  def push(value)
   @array.push value
  end
  alias_method :"<<", :push


  def pop
    @array.pop
  end

  def peek
    @array[-1]
  end

end

stack = MyStack.new()
stack.push("google")

stack.push("udemy")
stack.push("stack")
