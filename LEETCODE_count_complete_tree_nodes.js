// TC: O(n)
// SC: O(log n)
var countNodes = function(root) {
    function helper(node) {
        if (!node) return 0;
        
        let sum = 1;
        sum += helper(node.left);
        sum += helper(node.right);
        
        return sum;
    }
    
    return helper(root);
};
