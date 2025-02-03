// TC: O(n) 
var increasingBST = function(root) {
    let newRoot = null
    let curr = null
     
    function helper(node) {
        if (!node) return;
        helper(node.left)
        if (!newRoot) {
            newRoot = node
            curr = node
        } else {
            curr.right = node
            curr = curr.right
            node.left = null
        }
        helper(node.right)
    }
    
    helper(root)
    return newRoot
};

 