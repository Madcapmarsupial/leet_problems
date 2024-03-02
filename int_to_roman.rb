def int_to_roman(num)
    numeral_str = ""
    numeral_places = [
        ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
        ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC" ],
        ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM" ],
        ["M", "MM", "MMM"]
    ]

    digits = num.to_s.split('').reverse
    digits.count.times do |i|
        place = numeral_places[i]
        numeral_index = (digits[i].to_i - 1)
        next if digits[i] == "0"
        numeral_str.insert(0, place[numeral_index])
    end
    return numeral_str
end