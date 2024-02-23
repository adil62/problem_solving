# Time complexity: O(n)
# Space complexity: O(1)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}

def is_palindrome(head)
    return true if head.nil? || head.next.nil?

    mid = find_mid(head)
    reverse_curr = reverse_list(mid)
    curr = head
    while reverse_curr && curr
        return false if reverse_curr.val != curr.val
        reverse_curr = reverse_curr.next
        curr = curr.next
    end
    return true
end

def reverse_list(head)
    curr = head
    prev = nil
    while curr
        _next_ptr = curr.next
        curr.next = prev
        prev = curr
        curr = _next_ptr
    end
    return prev
end

def find_mid(head)
    slow_ptr=head  
    fast_ptr = head

    while (fast_ptr && fast_ptr.next)
        slow_ptr = slow_ptr.next
        fast_ptr = (fast_ptr.next).next
    end

    return slow_ptr
end

# Wont work for large inputs:
# def is_palindrome(head)
#     cur_ptr = head
#     while head
#         end_ptr = cur_ptr
#         end_ptr_prev = end_ptr
#         while (end_ptr.next != nil)
#             end_ptr_prev = end_ptr
#             end_ptr = end_ptr.next
#         end
#         if end_ptr.val != cur_ptr.val
#             return false
#         else
#             end_ptr_prev.next = nil
#             head = head.next
#         end
#         cur_ptr = cur_ptr.next
#     end
#     return true
# end
