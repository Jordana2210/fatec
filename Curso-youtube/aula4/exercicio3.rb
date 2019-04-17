numbers = {A: 10, B: 900, C: 2220, D: 2500, E: 15}

num =0
selection_key = numbers.select do | key,value |
    if value > numbers[:A]
        numbers[:A] = value
    end
end

puts numbers.key(numbers.values.max)


