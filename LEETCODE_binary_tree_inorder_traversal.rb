require "awesome_print"

class TreeNode
    attr_accessor :val, :left, :right

    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

class BinaryTree 
    attr_accessor :root 

    def traverse_and_insert(parent, node)
        if node.val > parent.val
            if parent.right == nil 
                parent.right = node 
                return
            end
            traverse_and_insert(parent.right, node)
        elsif node.val < parent.val
            if parent.left == nil 
                parent.left = node 
                return
            end
            traverse_and_insert(parent.left, node)
        end
    end

    def add(val)
        node = TreeNode.new(val)

        if @root == nil 
            @root = node
            return
        end

        self.traverse_and_insert(@root, node)
    end
end

tree = BinaryTree.new
tree.add(30)
tree.add(31)
tree.add(32)
tree.add(33)
tree.add(15)

# ap tree.inspect

# L-N-R
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(node, res)
    return if node.nil?
    inorder_traversal(node.left, res)
    res.push(node.val)
    inorder_traversal(node.right, res)

    return res
end

p inorder_traversal(tree.root, [])
