def is_valid(s)
    brackets = {"(" => ")", "[" => "]", "{" => "}" }
    order = []
    
    0.upto(s.length - 1) do |i|
        if brackets.key(s[i])           
            return false unless s[i] == order.pop
        else
            order << brackets[s[i]]
        end
    end
    
    return false if order[0] 
    true
end