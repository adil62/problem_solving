# Given the root of a binary tree, return its maximum depth.
# A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

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

def traverse(node)
    return 0 if node.nil?
  
    m1 = traverse(node.left)
    m2 = traverse(node.right)
 
    return 1 + [m1,m2].max
end

tree = BinaryTree.new
tree.add(3)
tree.add(9)
tree.add(20)
tree.add(15)
tree.add(7)

def max_depth(root)
    traverse(root)
end


p max_depth(tree.root)
