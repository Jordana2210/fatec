#polimorfismo: poder chamar o mesmo metodo c o mesmo nome e ter comportamentos diferentes
#super: faz ser possivel tbm mostrar o valor do pai
class Instrumento
    def escrever
        puts 'Escrevendo' 
    end
end

class Teclado < Instrumento
    puts 'tecladooo'
    super
end


class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à caneta'
    end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "Lapis:"
lapis.escrever
puts "Caneta"
caneta.escrever
puts "Teclado"
teclado.escrever
