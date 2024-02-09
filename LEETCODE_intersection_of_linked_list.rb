# Time Complexity: O(n)
# Space: O(1)
def getIntersectionNode(headA, headB)
    len_A = get_len(headA)
    len_B = get_len(headB)
    head_A_current = headA
    head_B_current = headB
    
    while (len_A > len_B)
     len_A = len_A -1 
     head_A_current = head_A_current.next
    end
    while (len_B > len_A)
     len_B = len_B -1 
     head_B_current = head_B_current.next
    end
    
    while (head_A_current)
        if head_A_current == head_B_current
            return head_A_current
        end
        head_B_current = head_B_current.next
        head_A_current = head_A_current.next
    end
    
    return nil
end

def get_len(head)
    current = head
    len = 0
    while (current)
        len = len+1
        current = current.next
    end
    return len
end
