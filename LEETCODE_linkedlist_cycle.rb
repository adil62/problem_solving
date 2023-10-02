# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
# Time complex - O(n) worst case it goes through all the nodes
# Space complex - O(n) worst case it stores all the nodes in array
def hasCycle(head)
    visited_nodes = []
    has_cycle = false
    node = head
    while node != nil
        if visited_nodes.include?(node.next)
            has_cycle = true
            break
        end
        visited_nodes.push(node.next)
        node = node.next
    end

    return has_cycle
end

# Floyd's Tortoise and Hare algorithm takes only O(1) space
def hasCycle(head)
    has_cycle = false
    fast_ptr = head
    slow_ptr = head

    loop do
        break if fast_ptr.nil? || fast_ptr.next.nil?
        break if slow_ptr.nil? || slow_ptr.next.nil?

        slow_ptr = slow_ptr.next
        fast_ptr = fast_ptr.next.next

        if fast_ptr == slow_ptr
            has_cycle = true
            break
        end

    end

    return has_cycle
end