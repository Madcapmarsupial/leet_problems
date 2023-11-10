# def first_pass_majority_element(nums)
#  counts = Hash.new(0)
#   nums.each do |num|
#     counts[num] += 1
#   end

#   counts.select! do |ele, count|
#     count > (nums.length / 3)
#   end
#   counts.keys
# end

#follow up
def majority_element(nums)
  return nums.uniq if nums.count < 3 
  ele1, ele2 = 0, 0
  count1, count2 = 0, 0 

  nums.each do |num|
    if ele1 == num
      count1 += 1
    elsif ele2 == num
      count2 += 1
    elsif count1 == 0
      ele1 = num
      count1 += 1
    elsif count2 == 0
      ele2 = num
      count2 += 1
    else
      #we decrement both counters
      count1 -= 1
      count2 -= 1
    end
  end
  #verify elements
  [ele1, ele2].filter! { |ele| nums.count(ele) > nums.count/3 } || [ele1, ele2].uniq
      #filter! returns nil if nothing is removed. 
      #so in that case (nums = [0, 0, 0]) we return the array.uniq
end