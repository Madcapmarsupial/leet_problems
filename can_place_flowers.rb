def can_place_flowers(flowerbed, n)
  plots = 0

  if flowerbed.length > 1
    plots += 1 if flowerbed[0] + flowerbed[1] == 0
    (1...flowerbed.length - 1).each do |i|
      plots += 1  if (flowerbed[i-1] + flowerbed[i] + flowerbed[i+1]) == 0

    end 
    plots += 1 if flowerbed[-2] + flowerbed[-1] == 0
  else
    plots += 1 if flowerbed.first == 0
  end

  plots >= n
end

