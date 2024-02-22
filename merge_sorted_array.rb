def merge(nums1, m, nums2, n)
    return nums1 if n == 0
        
    return  nums1[0..-1] = nums2[0..-1] if m == 0

    sub_arr = Array.new(nums1[0...m])
    i, j, nums_placed = 0, 0, 0

    while nums_placed < (m + n - 1)
      ele1, ele2 = sub_arr[i], nums2[j]

      if ele1 < ele2
        nums1[nums_placed] = ele1
        i += 1
        nums_placed += 1
      elsif ele1 == ele2
        nums1[nums_placed + 1] = ele2 
        nums1[nums_placed] = ele1
        i += 1
        j += 1
        nums_placed += 2
      else  
        nums1[nums_placed] = ele2
        j += 1
        nums_placed += 1
      end
      #check if we have reached the end of an array
      return nums1[nums_placed..-1] = nums2[j..-1] if i == m
    
      return nums1[nums_placed..-1] = sub_arr[i..-1] if j == n

      end
  end 