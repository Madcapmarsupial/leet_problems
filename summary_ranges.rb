def summary_ranges(nums)
  return [] if nums.empty?
  summary = []
  range = []
  
  nums.each do |num|
    if range.empty?
    #yes
      range << num
    else
      #no
      if (num - range.last > 1) #is there a gap?
        summary << stringify(range)
          #add current range
        range = [num]
          #make new range
      else #no gap range is not empty
        range << num  # add to existing range
      end
    end
  end

  summary << stringify(range)
    #add last range after loop completion
  summary
end

def stringify(range)
  return range.first.to_s if range.count == 1
  "#{range.first}->#{range.last}"
end