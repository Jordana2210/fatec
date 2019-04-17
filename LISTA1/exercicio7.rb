=begin
Exercício 1.7. Implemente a classe Porta que possua:
 Atributos: isOpen(boolean), numAberturas(int);
 Métodos: abrir(): abre a porta e conta 1 na contagem de aberturas;
 fechar(): fecha a porta. OBS: O atributo numAberturas deve
contar o total de aberturas de todas as portas possíveis.
=end
class Porta
    def initialize(isOpen,numAberturas)
        @isOpen = isOpen
        @@numAberturas = numAberturas
        @contador = 0
    end
    
    def abrir
        @isOpen = true
        @@numAberturas += 1
    end
    
    def numeroAberturas
       puts @@numAberturas
    end    
    
    def fechar
        @isOpen = false
        puts "Porta fechada"
    end
    
end

p = Porta.new(true, 1)
p1 = Porta.new(true, 1)
p2 = Porta.new(true, 2)
p1.numeroAberturas