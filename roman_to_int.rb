  

  def roman_to_int(s)
   chars = s.split("")      
   dict = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
   chars.map! { |char| char = dict[char] }
   chars.reverse!

  return chars.first if chars.length == 1

  sum = chars[0]
   (1...chars.count).each do |i|
    if chars[i-1] > chars[i]
      sum -= chars[i]
    else 
      sum += chars[i]
    end
   end
   sum
  end
  p roman_to_int("MCMXCIV")