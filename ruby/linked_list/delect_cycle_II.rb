# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def detectCycle(head)
  slow, fast = head, head
  
  while slow && fast && fast.next
    slow = slow.next
    fast = fast.next
    
    if slow == fast
      slow = head
      
      while slow != fast
        slow = slow.next
        fast = fast.next
      end
      return fast
    end
  end
  nil
end
