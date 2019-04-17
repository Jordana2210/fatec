class Estrela
    def initialize(nome, temperatura, cor) 
        @nome = nome
        @temperatura = temperatura
        @cor = cor
    end
    
    def mostrar_estrela
       puts "INFORMAÇÕES SOBRE A ESTRELA"
       puts "Nome: #{@nome}"
       puts "Temperatura: #{@temperatura}"
       puts "Cor: #{@cor}"
    end
    
    def temperatura
        @temperatura
        
    end
end

class Constelacao
    def initialize(nome)
        @nome = nome
        @estrelas = []
    end
    
    def add_estrela(estrela)
        @estrelas << estrela
    end
    
    def info_estrelas
        for estrela in @estrelas
            estrela.mostrar_estrela
        end
    end
    
    def temperatura_estrela
        temp = 0
        for estrela in @estrelas
            temp += estrela.temperatura
        end
        puts temp
    end
end