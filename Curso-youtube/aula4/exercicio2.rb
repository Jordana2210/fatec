new_hash = {oi: 'hi'}

puts "Digite um novo valor para o new_hash"
1.times do
    new_hash[gets.chomp] = gets.chomp
end
puts new_hash

new_hash.each do |key, value|
    puts "Uma das chaves é #{key} e seu valor é #{value}"
end

