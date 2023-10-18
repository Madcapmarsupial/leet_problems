#1071. Greatest Common Divisor of Strings
def gcd_string(str1, str2)
  length1, length2 = str1.length, str2.length

  i = [length1, length2].min

  while i > 0 
    if (length1 % i == 0 && length2 % i == 0)
      x = str1.slice(0..i)
      p x
      return x if (str1.gsub(x, "").empty? && str2.gsub(x, "").empty?)
    end

    i-= 1
  end

  ""
end
