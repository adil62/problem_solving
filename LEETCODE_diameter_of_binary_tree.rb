# Time complexity O(n)
# Space complexity O(height of btree)
def diameter_of_binary_tree(root)
    @res = 0
    dfs(root)
    return @res
end

def dfs(node)
    return 0 unless node

    left = dfs(node.left)
    right = dfs(node.right)
    @res = [@res, left + right].max

    return 1 + [left, right].max
end
