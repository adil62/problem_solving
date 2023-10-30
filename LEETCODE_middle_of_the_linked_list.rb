# Time complexity O(n)
# Space complexity O(1)
def middle_node(head)
    total_nodes = 0
    mid = nil

    node = head
    while node
        total_nodes = total_nodes + 1
        node = node.next
    end

    count = 0
    mid = (total_nodes/2).floor
    node = head
    while node
        if count == mid
            return node
        end
        count = count + 1
        node = node.next
    end

    return nil
end
