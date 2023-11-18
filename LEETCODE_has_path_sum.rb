# Time- O(n)
# Space- o(h)
def has_path_sum(root, target_sum)
    @target_sum = target_sum
    dfs(root, 0)
end

def dfs(node, curr_sum)
    return false if node.nil?

    curr_sum += node.val
    if  node.left.nil? && node.right.nil?
        return curr_sum == @target_sum
    end
    
    dfs(node.left, curr_sum) || dfs(node.right, curr_sum)
end