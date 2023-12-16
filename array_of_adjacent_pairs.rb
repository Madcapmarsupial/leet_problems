require 'byebug'

def restore_array(adjacent_pairs)
  adj_hash = {}
  adjaecent_pairs.each do |ele1, ele2|
    adj_hash[ele1] ||= []
    adj_hash[ele2] ||= []
    adj_hash[ele1] << ele2
    adj_hash[ele2] << ele1
  end

  start = 0 
  adj_hash.each do |ele, neighbors|
    if neighbors.size == 1
      start = ele
      break
    end
  end
  
  visited = {}
  visited[start] = true
  queue = [start]
  result = []

  while ! queue.empty?
    ele = queue.shift
    result << ele

    adj_hash[ele].each do |nxt_ele|
      next if visited[nxt_ele]
      visited[nxt_ele] = true
      queue << nxt_ele
    end  
  end

  return result
end