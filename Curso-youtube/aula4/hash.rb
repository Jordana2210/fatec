# 1 - Crie um hash vazio
capitais = Hash.new
capital = {}
# 2 - Um hash também pode ser iniciado com vários pares de chave-valor
capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo'}

# 3 - Inserir um novo valor no hash
capitais[:parana] = "Curitiba"

# 4 - Ver chaves do hash
capitais.keys

# 5 - Ver valores do hash
capitais.values

# 6 - Excluir elementos
capitais.delete(:acre)

# 7 - Pegar valor associado a chave
capitais[:sao_paulo]

# 8 - Qtde de elementos
capitais.size

#9 - Saber se o hash está vazio
capitais.empty?

puts "A quantidade de elementos dentro do hash é #{capitais.size}"
puts capitais