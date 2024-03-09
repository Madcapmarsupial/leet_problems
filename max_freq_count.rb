def max_frequency_elements(nums)
   table = Hash.new(0)
   nums.each {|num| table[num] += 1 }
   frequencies = table.values
   max = frequencies.max
   count = 0
   frequencies.each { |f| count += f if f == max  }
   count
end