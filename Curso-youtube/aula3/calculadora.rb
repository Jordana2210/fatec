
puts "Digite qual a operação desejada"
puts "1 - Adição"
puts "2 - Subtração"
puts "3 - Divisão"
puts "4 - Multiplicação"
puts "0 - Sair do programa"

operacao = gets.chomp.to_i

puts "Agora digite dois números:"
puts "Digite o primeiro número"
num1 = gets.chomp.to_i
puts "Digite o segundo número"
num2 = gets.chomp.to_i

if operacao == 1
    result = num1+num2
    puts "A adição de #{num1}+#{num2} é = #{result} "

elsif operacao == 2
    result = num1-num2
    puts "A adição de #{num1}-#{num2} é = #{result} "

elsif operacao == 3
    result = num1/num2
    puts "A adição de #{num1}/#{num2} é = #{result} "
    
elsif operacao == 4
    result = num1*num2
    puts "A adição de #{num1}*#{num2} é = #{result} "

else
     result = "Valor digitado é inválido"
end

