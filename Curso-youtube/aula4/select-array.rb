array = [1,2,3,4,20,909]

selection = array.select do |a|
    a>=4
end

puts selection