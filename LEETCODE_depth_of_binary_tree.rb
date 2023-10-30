# Time complexity - O(n)
# Space complexity - O(height)
def max_depth(root)
    return  dfs(root)
end

def dfs(node)
    return 0 unless node

    depthl = dfs(node.left)
    depthr = dfs(node.right)

    return 1 + [depthl, depthr].max
end
