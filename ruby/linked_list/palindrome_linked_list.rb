# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
     # puts "head #{head.inspect}"
    mid = middle_node(head)
    
    # reverse second half
    sec_head = reverse_list(mid)
    puts "ppppp #{mid.inspect}"
    puts "ppppp #{sec_head.inspect}"
    rereveresehead = sec_head
    
    while(head != nil && sec_head != nil)
        if head.val != sec_head.val
            break
        end
        head = head.next
        sec_head = sec_head.next
        
    end
    
     reverse_list(rereveresehead)
     head == nil || sec_head == nil
end

def reverse_list(head)
  return head if head.nil? || head.next.nil?
  prev = nil
  present = head
  nxt = present.next
    
    while present != nil
       present.next = prev
       prev = present
       present = nxt
       nxt = nxt.next if nxt != nil
    end
    prev
end

def middle_node(head)
  slow, fast = head, head
  
  while(fast != nil && fast.next != nil)
    slow = slow.next
    fast = fast.next.next
  end
  slow
end
