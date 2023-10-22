# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

# Time complex - O(n)
# Space complex = O(1)
def reverse_list(head)
    prev = nil
    node = head

    while node != nil
        next_node = node.next
        node.next = prev
        prev = node
        node = next_node
    end

    return prev
end
