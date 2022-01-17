class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

# Iterative way
def reverse_list(head)
  return head if head.nil? || head.next.nil?
  prev = nil
  present = head
  next_node = present.next
  
  while(present)
    present.next = prev
    prev = present
    present = next_node
    next_node = next_node.next if next_node
  end
  head = prev
end

# Recursion way
def reverse_list(node)
  if (node == tail)
    head = tail
    return
  end
  
  reverse_list(node.next)
  
  tail.next = node
  tail = node
  tail.next = nil
end

