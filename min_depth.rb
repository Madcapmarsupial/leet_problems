def min_depth(root)
    return 0 if root.nil?
    depth = 1
    queue = [root]
    while true 
        #reset node count to equal current level
        node_count = queue.length
        #start inner loop to process current 'depth' level before moving to next.
        (0..node_count - 1).each do 
            node = queue.shift
            return depth if node.left.nil? && node.right.nil?
            queue << node.left unless node.left.nil?
            queue << node.right unless  node.right.nil?
        end
        #end of inner loop and current tree level 
        depth += 1
    end
end