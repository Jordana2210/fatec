def compare(a,b)
    a > b
end

a = 1
b = 2

result = compare(a,b)

puts "O resultado da comparação é #{result }"

#quando há um return no metodo ele retorna o valor na hora e para de executar, estando na primeira ou na ultima linha
#o retorno retorna sempre o ultimo valor
def retorno
   return 22
   'bye'
end
puts retorno


