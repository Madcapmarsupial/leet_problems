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

def largest_values(root)
  return [] if root.nil?
    queue = [root]
    values = []
    largest_node = nil
   
  until queue.empty?
    node_count = queue.size
    #set the limit for the inner loop based off (current) queue size
    (0..node_count - 1).each do |i|  
      node = queue.shift  
        #remove the next node from the front of the queue
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
        #add children to rear of the (unless they are nil)

      largest_node ||= node.val
      #if largest_node hasnt been assigned yet assign it to current node.val
      largest_node = (node.val > largest_node ? node.val : largest_node)
      #check largest_node against current node
       #repeat for (node_count) times
    end

    values << largest_node
    #add largest_node to values
    #reset largest node for next loop
    largest_node = nil
  end
  values
end