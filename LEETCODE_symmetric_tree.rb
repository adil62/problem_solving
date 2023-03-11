# Given the root of a binary tree, check whether it is a mirror of itself 
# (i.e., symmetric around its center).

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
tree.add(6)
tree.add(2)
tree.add(9)
tree.add(3)
tree.add(8)


def check_nodes(subtree1, subtree2)
    if subtree1.nil? && subtree2.nil?
        return true
    end

    if subtree1.nil? || subtree2.nil?
        return false
    end

    if subtree1.val != subtree2.val
        return false
    end

    return check_nodes(subtree1.left, subtree2.right) && check_nodes(subtree1.right, subtree2.left)
end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
   check_nodes(root.left, root.right)
end

p is_symmetric(tree.root)

 