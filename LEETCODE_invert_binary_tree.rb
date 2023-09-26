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
# @return {TreeNode}

# Time complexity o(n) we are visiting all nodes only once.
# Space complexity o(h) height of bintree.
def invert_tree(root)
    traverse(root)
    return root
end

def traverse(node)
    return if node.nil?

    left = node.left
    node.left = node.right
    node.right = left

    traverse(node.left)
    traverse(node.right)
end

