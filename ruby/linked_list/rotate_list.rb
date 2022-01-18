 Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if k < 0 || head.nil? || head.next.nil?
  
  length = 1
  last = head
  # Find the last node
  while(last.next != nil)
    last = last.next
    length +=1
  end
  
  # point last node to head
  last.next = head
  
  # Find the rotations
  # If length 6 and k is 8, we need to rotate 8 % 6 = 2 times
  rotations = k % length
  skip = length - rotations
  
  # Find the new last node(last node of skip length)
  newlast = head
  while skip >1
    newlast = newlast.next
    skip -=1
  end
  
  head = newlast.next
  newlast.next = nil
  
  head
end
