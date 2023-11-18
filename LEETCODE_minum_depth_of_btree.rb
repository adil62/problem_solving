def min_depth(root)
    return rec(root)
end

def rec(node)
    return 0 if !node

    return 1 + rec(node.right) if node.left.nil?
    return 1 + rec(node.left) if node.right.nil?

    left = rec(node.left)
    right = rec(node.right)

    return 1 + [right, left].min
end
