def build_array(target, n)
    stack = []
    stream = (0..n).to_a
    operations = []

    target.each_with_index do |num, i|
      if i == 0
        diff = num - 1
        #if num == 3  -->  3 - 1 = 2  so two removals diff = 2 
        operations += remove(diff)
          #should remove [1, 2] 
        operations << "Push"
          #add the next number in the stream after differnce in removals
      else
        #5 - 3 = 2
        diff = num - target[i-1]
        #subtract one from diff in order to account for target[i-1] already being added to operations
        operations += remove(diff-1)
        operations << "Push"
      end
    end

    return operations
end

def remove(remove_count)
  return [] if remove_count == 0
  removes = []
  (remove_count).times { |i| removes += ["Push", "Pop"]}
  # operation for removing a single value = ["Push", "Pop"]
  removes
end


