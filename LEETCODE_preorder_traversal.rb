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
# @return {Integer[]}
def preorder_traversal(root)
    @res = []
    traverse_preorder(root)
    return @res
end

def traverse_preorder(node)
    return if node.nil?
    @res.push(node.val)
    traverse_preorder(node.left)
    traverse_preorder(node.right)
end
