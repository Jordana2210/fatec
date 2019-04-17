#Dentro da classe Cachorro, soh
#terei coisas relevantes a um Cachorro.
class Cachorro
    #initialize indica o construtor 
    #de uma classe. Construtores
    #servem para inicializar os atributos.
    #Ou seja, dar um estado inicial.
    
    #Os atributos sao @nome e @raca.
    def initialize(nome,raca)
        @nome = nome
        @raca = raca
    end
    
    def latir
        puts "#{@nome}: AU AU AU"
    end
    
    def mostrar_raca
        puts "Minha raca eh: #{@raca}"
    end
    
end
#PROGRAMA PRINCIPAL
#UM OBJETO CACHORRO
c = Cachorro.new("Bidu","SRD")
c.latir
c.mostrar_raca
puts c
d = Cachorro.new("Spike","Yorkshire")
d.latir
d.mostrar_raca
puts d
