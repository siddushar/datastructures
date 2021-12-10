class Node
   attr_accessor :value, :next_node
   def initialize(value, next_node=nil) 
      @value = value
      @next_node = next_node
   end
  
end

class ReverseListUsingStack
    
    attr_accessor :head
   
   def initialize(value)
      @head = Node.new(value, nil)
   end
   
   def push(value)
     curr_node = @head
     
     while curr_node.next_node != nil
      curr_node = curr_node.next_node
    end
    curr_node.next_node = Node.new(value, nil)
   end
   
   def resverse
       stack = []
       curr_node = @head
       
     # Get all nodes ans push into array
       while curr_node.next_node != nil
        stack << curr_node.value
          curr_node = curr_node.next_node
        end

       puts "ssss - #{stack}"
       
       
      @head = curr_node
     
      while(stack.length!=0)
        #puts "curr_node -- #{curr_node.value}-- #{stack}"
        curr_node.next_node = Node.new(stack[stack.length - 1])
        curr_node = curr_node.next_node;
        stack.pop()
      end
       
      
       return @head
   end
   
   # Display
  def display
    curr_node = @head
    res = ""
    while curr_node.next_node != nil
      res += curr_node.value.to_s + "->" 
      curr_node = curr_node.next_node
    end
    res += curr_node.value.to_s
  end
end


list = ReverseListUsingStack.new(10)
list.push(23)
list.push(7)
list.push(34)
list.push(29)

puts list.display
list.resverse
puts list.display

