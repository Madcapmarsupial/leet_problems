def sorted_squares(nums)
    sqaured = Array.new(nums)
    first_idx = 0
    last_idx = nums.size - 1
    i = nums.size - 1

    while  first_idx <= last_idx
        first = (nums[first_idx] ** 2)
        last = (nums[last_idx] ** 2)

        if first <= last
            sqaured[i] = last
            last_idx -= 1
        else
            sqaured[i] = first
            first_idx += 1
        end
        i -= 1
    end
   
    sqaured
end
