def kids_with_candies(candies, extra_candies)
 result = Array.new(candies.length, true)
  return result if candies.min + extra_candies >= candies.max
    
    (0...candies.length).each do |i|
            result[i] = false if candies[i] + extra_candies < candies.max
    end

    result
end
