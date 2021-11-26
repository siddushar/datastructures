class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
  
  def to_s
    curr_node = self
    
    res = '['
    
    while curr_node.next_node != nil
      res = res + curr_node.value.to_s
      curr_node = curr_node.next_node
    end
    res = res + curr_node.value.to_s + ']'
  end
  
end

head = Node.new 8, nil
snd = Node.new 7, nil
head.next_node = snd
puts head
