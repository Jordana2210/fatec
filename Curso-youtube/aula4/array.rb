# 1 - crie um array vazio
estados = []

# 2 - insira um novo item no array
estados.push('Espírito Santo')


estados.push('Paraná', 'Rio Grande do Sul')
estados.push('Minas')

#adc acre na 1ª posicao
estados.insert(0,"Acre",'Amapá')

#muda o valor da posição
estados[4] = "Roraima"

#chamar de uma posição até a outra, o puts será utilizado para imprimir na tela

estados[1..2]

#adquira o ultimo elemento do intervalo

estados[-1]

#adquira o penultimo
estados[-2]

#adquira o antipenultimo

estados[-3]

#funciona tbm com intervalos
estados[-3..-1]

#pegar primeiro elemento do array
estados.first

#pegar ultimo elemento do array
estados.last

#INFORMAÇÕES

#1-SABER QUANTOS ELEMENTOS TEM NO ARRAY

estados.count

#2- SABER SE ESTÁ VAZIO OU CHEIO. se não tiver vazio, volta falso
estados.empty?

#- saber se elemento está incluido no array
estados.include?('São Paulo')

#DELETAR ELEMENTOS DO ARRAY

#deleter um elemento
estados.delete_at(2)
puts estados[2]

#deletar o primeiro
estados.pop

#deletar o último
estados.shift

puts estados


