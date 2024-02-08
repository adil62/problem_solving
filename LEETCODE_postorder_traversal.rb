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
def postorder_traversal(root)
    @res = []
    helper(root)
    return @res
end

def helper(node)
    return unless node
    
    helper(node.left)
    helper(node.right)
    @res.push(node.val)
end
