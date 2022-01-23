# Given the head of a linked list, return the node where the cycle begins. If there is no cycle, return null.

# There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer.
# Internally, pos is used to denote the index of the node that tail's next pointer is connected to (0-indexed). It is -1 if there is no cycle.
# Note that pos is not passed as a parameter.
# Do not modify the linked list.



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
        fast = fast.next.next
        
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


