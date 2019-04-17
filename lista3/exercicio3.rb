class Estrela
    def initialize(nome, temperatura, cor)
        @nome = nome
        @temperatura = temperatura
        @cor = cor
    end
    
    def temperatura
        @temperatura
    end
    
    def mostrar
        puts "Informações sobre a estrela: "
        puts "Nome - #{@nome}"
        puts "Temperatura - #{@temperatura}K"
        puts "Cor - #{@cor}"
    end
end

class Constelacao 
    def initialize(nome)
        @nome = nome
        @estrelas = []
    end
    
    def adicionar(estrela)
        @estrelas << estrela
    end
    
    def infoEstrelas
        for estrela in @estrelas
            estrela.mostrar
        end
        #puts "Todas as estrelas: #{@estrelas} da constelação #{@nome}"
    end
    
    def tempConstelacao
        #como fazer a soma
        total = 0
        for estrela in @estrelas
            total += estrela.temperatura
        end
        puts "#{total}"
    end
end

c1 = Constelacao.new("Orion")
c1.adicionar(e1 = Estrela.new("Beltegeuse", 3.600, "avermelhada"))
c1.adicionar(e2 = Estrela.new("Rígel", 11.500, "azulado"))
c1.adicionar(e3 = Estrela.new("Saiph",26.500, "nd"))
#e1.mostrar
#e2.mostrar
#e3.mostrar
c1.infoEstrelas
c1.tempConstelacao