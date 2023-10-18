def kids_with_candies(candies, extra_candies)
 result = Array.new(candies.length, true)
  return result if candies.min + extra_candies >= candies.max
    
    (0...candies.length).each do |i|
            result[i] = false if candies[i] + extra_candies < candies.max
    end

    result
end

p kids_with_candies([2,3,5,1,3], 3)
p kids_with_candies([4,2,1,1,2], 1)
p kids_with_candies([12,1,12], 10)


