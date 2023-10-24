def reverse_vowels(s)
    v_list = s.gsub(/[^aeiouAEIOU]/, "")
    i = 0
    while v_list.length > 0
      if "aeiouAEIOU".include?(s[i])
        s[i] = v_list[-1] 
        v_list.delete_suffix!(v_list[-1])
      end
    i+= 1
    end
    s
end