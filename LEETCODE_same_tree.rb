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

def check_nodes(p, q)
    if p.nil? && q.nil?
        return true
    end

    if p.nil? || q.nil?
        return false
    end

    if p.val != q.val
        return false
    end

    check_nodes(p.left, q.left) && check_nodes(p.right, q.right)
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    check_nodes(p, q)
end

tree1 = BinaryTree.new
tree1.add(3)
tree1.add(2)
tree1.add(4)

tree2 = BinaryTree.new
tree2.add(3)
tree2.add(2)
tree2.add(5)

p is_same_tree(tree1.root, tree2.root)
