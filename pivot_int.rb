def pivot_integer(n)
    sums = {}
    sum = 0
    1.upto(n) { sums[sum += _1] = _1 }
    sum = 0
    (n).downto(1) do |i| 
        return i if sums[sum += i] && sums.fetch(sum) == i
    end
    
    -1
end