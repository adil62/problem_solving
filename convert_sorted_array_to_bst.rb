# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}

# Time complexity - O(n) will iterate all nodes
# Space complexity - O(height of tree)
def sorted_array_to_bst(nums)
    return rec(nums, 0, nums.length - 1)
end

def rec(nums, left, right)
    return nil if left > right

    mididx = (left + right) /2
    node = TreeNode.new(nums[mididx])
    node.left = rec(nums, left, mididx-1)
    node.right = rec(nums, mididx+1, right)

    return node
end
