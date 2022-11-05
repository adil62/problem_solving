# 83. Remove Duplicates from Sorted List
# Given the head of a sorted linked list, 
# delete all duplicates such that each element appears only once.
# Return the linked list sorted as well.


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
def delete_duplicates(head)
    node = head

    while (node != nil && node.next != nil)
        if node.val == node.next.val
            node.next = node.next.next
        else      
            node = node.next
        end
    end

    return head
end

class ListNode
    attr_accessor :val, :next
    attr_writer :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

class List 
    attr_accessor :head, :size

    def initialize
        @head = nil
        @size = 0
    end

    def append(node)
        current_node = @head

        if current_node == nil 
            @head = node
            @size = @size + 1
            return
        end

        while (current_node.next != nil)
            current_node = current_node.next
        end
        current_node.next = node
        @size = @size + 1
    end

    def delete(pos)
    end

    def find(value)
    end

    def print
        node = @head
        p node
        while (node.next != nil)
            puts node
            node = node.next
        end
    end
end
 
llist = List.new
llist.append(ListNode.new(11))
llist.append(ListNode.new(11))
llist.append(ListNode.new(11))
llist.append(ListNode.new(12))
llist.append(ListNode.new(12))
llist.append(ListNode.new(12))
llist.append(ListNode.new(13))
llist.append(ListNode.new(13))

p delete_duplicates(llist.head)
