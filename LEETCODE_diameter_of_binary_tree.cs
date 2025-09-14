/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public int val;
 *     public TreeNode left;
 *     public TreeNode right;
 *     public TreeNode(int val=0, TreeNode left=null, TreeNode right=null) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */

public class Solution {
    private int res = 0;

    public int DiameterOfBinaryTree(TreeNode root) {
        Helper(root);
        return res;
    }

    private int Helper(TreeNode node)
    {
        if (node == null) return 0;

        int leftCount = Helper(node.left);
        int rightCount = Helper(node.right);
        int height = 1 + Math.Max(leftCount, rightCount);
        this.res = Math.Max(res, leftCount + rightCount);
        return height;
    }
}
