class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  return head if head.nil?
  prev =  nil
  curr = head
  while(left>1)
    prev = curr
    curr = curr.next
    left -=1
    right -=1
  end
  
  conn = prev
  tail = curr
  
  while(right>0)
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
    right -=1
  end
  
  if  conn != nil
    conn.next = prev
  else
    head = prev
  end
  tail.next = curr
  
  head
end
