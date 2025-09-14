public class Solution {
    public bool IsBalanced(TreeNode root) {
        if (root == null) return true;

        var left = Height(root.left);
        var right = Height(root.right);

        if (Math.Abs(left - right) > 1) return false;

        return IsBalanced(root.left) && IsBalanced(root.right);
    }

    private int Height(TreeNode node)
    {
        if (node == null) return 0;

        int left = Height(node.left);
        int right = Height(node.right);

        return 1 + Math.Max(left, right);
    }
}
