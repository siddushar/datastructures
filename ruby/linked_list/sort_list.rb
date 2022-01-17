# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if head.nil? || head.next.nil?
  
  mid = get_mid(head)
  left = sort_list(head)
  right = sort_list(mid)
  merge(left, right)
end

def get_mid(head)
  slow, fast = head, head
  
  while(fast.next != nil && fast.next.next != nil)
    slow = slow.next
    fast = fast.next.next
  end
  
  mid = slow.next
  slow.next = nil
  return mid
end

def merge(list1, list2)
  dummy_node = ListNode.new()
  tail = dummy_node
  
  while(list1 != nil && list2 != nil)
    if(list1.val < list2.val)
      tail.next = list1
      list1 = list1.next
      tail = tail.next
    else
      tail.next = list2
      list2 = list2.next
      tail = tail.next
    end
  end
  # append everything from  list1 or list2
   tail.next = list1 == nil ? list2 : list1
  dummy_node.next
end
