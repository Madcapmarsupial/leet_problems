def get_common(nums1, nums2)

    j = 0
    i = 0
    length = nums1.size - 1
    while true
        first1 = nums1[i]
        first2 = nums2[j]
        return -1 if (first1.nil? || first2.nil?)
        return first1 if first1 == first2

        if first1 > first2
            j += 1
        else
            i += 1
        end
    end
end