def intersection_1(nums1, nums2)
    j = 0
    i = 0
    length = nums1.size - 1
    intersection = []
    nums1.sort!
    nums2.sort!
    while true
        first1 = nums1[i]
        first2 = nums2[j]
        return intersection if (first1.nil? || first2.nil?)
        if first1 == first2
            intersection << first1 if !intersection.include?(first1)
            i += 1
            j += 1
        elsif first1 > first2
            j += 1
        else
            i += 1
        end
    end
end


def intersection_2(nums1, nums2)
  intersection = []
  nums1.each do |num|
    if (nums2.include?(num) && !intersection.include?(num))
        intersection << num
    end
  end
  intersection
end


def intersection_3(nums1, nums2)
  nums1.sort!
  length = nums1.size
  arr = []
  
  nums2.each do |target|
    num = binary_search(nums1, length, target) 
    arr << num if !num.nil? && !arr.include?(num)
  end
  arr
end

def binary_search(arr, size, t)
  l = 0
  r = size - 1
  
  while l <= r
    m = ((l + r) / 2).floor
    
    if arr[m] < t
      l = m + 1
    elsif arr[m] > t
      r = m - 1
    else
      return t
    end
  end
  return nil
end


def intersection(nums1, nums2) = nums1 & nums2