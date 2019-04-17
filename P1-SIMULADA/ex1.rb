class Candidato
    def initialize(numero,partido,nome)
        @numero = numero
        @partido = partido
        @nome = nome
        @votos_recebidos = 0
    end
    
    def nome
        @nome
    end
    
    attr_reader :numero, :partido
        
    def votos_recebidos
        @votos_recebidos
    end
    
    def votar
        @votos_recebidos+=1
    end

    
    def info_candidato
        puts "INFORMAÇÕES CANDIDATO"
        puts "Número: #{@numero}"
        puts "Partido: #{@partido}"
        puts "Nome: #{@nome}"
        puts "Votos recebidos: #{@votos_recebidos}"
    end
    
end

class Eleicao
    def initialize(ano)
        @ano = ano
        @candidatos = []
    end
    
    def mostrar_ano
        puts @ano
    end
    
    def inserir_candidatos(candidato)
        @candidatos << candidato
    end
    
    def mostrar_dados
        for candidato in @candidatos
            candidato.info_candidato
        end
    
    end
    
    def votar(numero)
        for candidato in @candidatos
            if  numero == candidato.numero
                candidato.votar
            end
        end
    end
    
    def votos_partidos
        contador1 = 0
        contador2 = 0
        contador3 = 0
        
        for candidato in @candidatos
            if candidato.partido == "AZUL"
                contador1+=candidato.votos_recebidos
                puts "O partido tem azul tem #{contador1} votos"
            elsif candidato.partido == "VERDE"
                contador2+=candidato.votos_recebidos
                puts "O partido verde tem #{contador2} votos"
            else 
                contador3+= candidato.votos_recebidos
                puts "O partido vermelho tem #{contador2} votos"
            end
        end
    end
end

c1 = Candidato.new(22,"VERDE","Jordana")
c2 = Candidato.new(11,"AZUL", "Mauricio")
e = Eleicao.new(2018)
e.inserir_candidatos(c1)
e.inserir_candidatos(c2)
e.votar(22)
e.votar(22)
e.votar(11)
e.mostrar_dados
e.votos_partidos