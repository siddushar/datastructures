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
def delete_duplicates(head)
   
    current_node = head
    while(current_node != nil) 
        if current_node.next != nil && current_node.val === current_node.next.val
           current_node.next = current_node.next.next 
        else
            current_node = current_node.next
        end
    end
    head
end
