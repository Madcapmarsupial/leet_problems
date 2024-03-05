def is_palindrome(x)
    return false if x < 0

    digits = []
      #build digits array
    until x < 10 
        digits << x % 10 #add right-most digit of x to digits 
        x /= 10 #drop right most digit of x
    end
    digits << x

    i = digits.length - 1
    j = 0
    while  i > 0
        return false if digits[i] != digits[j]
        i -= 1
        j += 1
    end
    return true
end




# Runtime
# 68
# ms

# Beats
# 97.55%
# of users with Ruby

# Memory
# 211.59
# MB
# Beats
# 29.36%
# of users with Ruby