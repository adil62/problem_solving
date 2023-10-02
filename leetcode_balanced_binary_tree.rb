# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}

def is_balanced(root)
    return check_recursive(root)
end

def check_recursive(node)
    return 0 unless node

    height_right = 1 + check_recursive(node.right)
    height_left = 1 + check_recursive(node.left)

    return -1 if height_left == -1 || height_right == -1
    return -1 if if (height_left - height_right).abs > 1
    return [height_left, height_right].max
end
