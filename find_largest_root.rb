# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer[]}

def largest_values(root)
  return [] if root.nil?
    queue = [root]
    values = []
    largest_node = nil
   
  until queue.empty?
    node_count = queue.size
    #set the limit for the inner loop based of queue size
    (0..node_count - 1).each do |i|
      #the inner loop looks at every node in the queue and adds it's child nodes to queue (these will make up the next loop/tree level via node_count)
      
      node = queue.shift  
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?

      #make sure largest node has a non-nil value before we use it
      largest_node ||= node.val
      #check largest_node against current node
      largest_node = (node.val > largest_node ? node.val : largest_node)
    end

    values << largest_node
    #reset largest node
    largest_node = nil
  end
  values
end

