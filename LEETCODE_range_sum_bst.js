// Time complexity: O(n)
// Time complexity: O(n) (height of the tree), avg case O(log n)

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @param {number} low
 * @param {number} high
 * @return {number}
 */

var rangeSumBST = function(root, low, high) {
    const res= helper(root,low, high)
    return res
};

function helper(node,low, high) {
    if (!node) return 0
    let sum = 0
    if (node.val >= low && node.val <= high) {
        sum = node.val
    }
    sum += helper(node.left, low, high)
    sum += helper(node.right, low, high)
    return sum
}
