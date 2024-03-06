// TC: O(n)
// SC: O(n)
var postorder = function(root) {
    let stack = [];
    helper(root);
    return stack;
    
    function helper(node) {
        if (!node) return;
        
        for (child of node.children) {
            helper(child)
        }
        stack.push(node.val)
    }
};
