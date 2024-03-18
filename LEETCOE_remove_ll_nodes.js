/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} val
 * @return {ListNode}
 */
var removeElements = function(head, val) {
    let curr = head
    let prev = null;
    
    while (curr) {
        if (head.val === val) {
            head = head.next
            curr = curr.next
            prev = null;
        } else if (curr.val === val) {
            prev.next = curr.next
            curr = curr.next
        } else {
           prev = curr
           curr = curr.next   
        }
    }
    
    return head
};
