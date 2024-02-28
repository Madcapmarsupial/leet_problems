def inorder_traversal(root)
    return [] if root.nil?
    #inorder_traversal(root.left) + [root.val] + inorder_traversal(root.right)
    #recursive solution

    stack = [root]
    list = []
    until stack.empty?
        node = stack.pop
        if node.left.nil? && node.right.nil?
            list << node.val
            next 
        end

        stack << node.right unless node.right.nil?
        stack << TreeNode.new(node.val)
        stack << node.left unless node.left.nil?
    end
    return list
end