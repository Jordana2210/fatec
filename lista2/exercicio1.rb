class Partido 
    def initialize(nome,ideologia,sigla,numero)
        @nome = nome
        @ideologia = ideologia
        
        case sigla
            when Symbol
                @sigla = sigla
            when String
                @sigla = sigla.to_sym
        end
        
        @numero = numero
    end
    
    def mostrarPartido
       puts "Partido: #{@nome}
             Ideologia: #{@ideologia}
             Sigla: #{@sigla}
             Número: #{@numero}" 
    end
end

class Candidato
    def initialize(nome,partido)
        @nome = nome
        @partido = partido
    end

    def mostrarCandidato
       puts "Nome do Candidato: #{@nome}"
       @partido.mostrarPartido
    end
    
    def mudarPartido(novoPartido)
       @partido = novoPartido
       @partido.mostrarPartido
    end
end


p1 = Partido.new('PHP','Comunista',:PHP,'171')
p1.mostrarPartido
p2 = Partido.new('Ruby','DIREITA',:RB,'2048')
p2.mostrarPartido

c1 = Candidato.new('Mauricio',p1)
c1.mostrarCandidato
c1.mudarPartido(p2)
c1.mostrarCandidato
