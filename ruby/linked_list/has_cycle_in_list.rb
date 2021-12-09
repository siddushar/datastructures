
class LinkedListNode
    attr_accessor :value, :next_node
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end   
end


def has_cycle(head)
      slow, fast = head, head
    
    while(!slow.nil? && !fast.nil? && !fast.next_node.nil?)
        slow = slow.next_node
        fast = fast.next_node.next_node
        
        return true if fast == slow 
    end
    false
end
    
    
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(21, node4)

puts has_cycle(node5)

node1.next_node = node5 # creates an infinite loop
puts has_cycle(node5)
