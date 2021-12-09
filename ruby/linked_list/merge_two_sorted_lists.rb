# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

def merge_two_lists(list1, list2)
    
    return list1 if list2.nil?
    return list2 if list1.nil?
  
# iterative way with using 3rd list
    mergSorted = ListNode.new
    tail = mergSorted
    
    while(list1 && list2)
        if list1.val < list2.val
            tail.next = list1
            list1 = list1.next
        else
            tail.next = list2
            list2 = list2.next
        end
        
        tail = tail.next
    end
    
    tail.next = list1.nil? ? list2 : list1
    return mergSorted.next
    
  
  # recursion in place
    if list1.val < list2.val
        list1.next = merge_two_lists(list1.next, list2)
            return list1
        else
        list2.next = merge_two_lists(list1, list2.next)
            return list2
        end
end
