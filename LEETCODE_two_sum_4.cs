// TC: O(n)
// SC: O(n)
public class Solution
{
    public bool FindTarget(TreeNode root, int k)
    {
        return Helper(root, k, new HashSet<int>());
    }

    private bool Helper(TreeNode node, int target, HashSet<int> seen)
    {
        if (node == null) return false;

        if (seen.Contains(target - node.val))
            return true;

        seen.Add(node.val);

        return Helper(node.left, target, seen) || Helper(node.right, target, seen);
    }
}
