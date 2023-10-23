def can_place_flowers(flowerbed, n)
   plots = 0
   i = 0
   while i <= flowerbed.length-1
      if can_place_flower?(flowerbed, i)
         plots+= 1
         i+=2
      else
         i+=1
      end
   end

   plots >= n
end

def can_place_flower?(flowerbed, i)
   if i == 0
    return true if flowerbed == [0]
    return false if flowerbed.length == 1 && flowerbed.first == 1
    #check first two elements
    return (flowerbed[0] + flowerbed[1] == 0)
   end

   #check last two elements
   if i == flowerbed.length-1
      return (flowerbed[-1] + flowerbed[-2] == 0)
   end
  
   # if "we still have more then two elements in the arr"
   # check middle elements
   #check that we dont increment i past length
   if (flowerbed.length-1 - i) >= 1 
      return (flowerbed[i-1] + flowerbed[i] + flowerbed[i+1]) == 0
   end

   false
end
