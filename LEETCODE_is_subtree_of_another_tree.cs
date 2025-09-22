public class Solution {    
    public bool IsSubtree(TreeNode root, TreeNode subRoot) {
        if (root == null) return false;

        if (IsSameTree(root, subRoot)) return true;

        return IsSubtree(root.left, subRoot) || IsSubtree(root.right, subRoot);
    }

    public bool IsSameTree(TreeNode a, TreeNode b)
    {
        if (a == null && b == null) return true;
        if (a == null || b == null) return false;

        if (a.val != b.val) return false;

        return IsSameTree(a.left, b.left) && IsSameTree(a.right, b.right);
    }
}
