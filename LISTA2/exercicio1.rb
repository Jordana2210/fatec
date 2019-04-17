=begin
1.1 Todo partido político é composto por um nome, uma
ideologia, uma sigla e um número. Um candidato é composto por nome
e um partido. Um candidato pode mudar de partido (neste caso se qualquer regra), e suas informações deverão sempre ser mostradas na tela
junto com as informações do partido. Todo candidato deverá sempre ter
um partido (caso Brasileiro). Implemente todas as classes envolvidas
nessa situação, lembre-se de usar construtores e metodos get, se necessário. Implemente também alguns testes. É proíbido usar conceitos
que ainda não foram abordados.
=end

class Partido
    def initialize(nome, ideo, sigla, numero)
        @nome = nome
        @ideo = ideo
        @sigla = sigla
        @numero = numero
    end
    
    def mostrar_partido
       puts "INFORMAÇÕES DO PARTIDO:
             Nome do partido: #{@nome}
             Ideologia: #{@ideo}
             Sigla: #{@sigla}
             Número: #{@numero}"
    end
end

class Candidato
    def initialize(nome, partido)
        @nome = nome
        @partido = partido
    end
    
    def mostrar_candidato
       puts "Nome candidato: #{@nome}"
       @partido.mostrar_partido
    end
    
    def mudar_partido(novo_partido)
        @partido = novo_partido
    end
    
end

p = Partido.new("PARTIDO VERDE","VERDE",:PV,18)
c1 = Candidato.new("Mauricio", p)
c1.mostrar_candidato
p2 = Partido.new("PARTIDO SOCIAL LIVRE", "ARCO IRIS", :PSL, 23)
c1.mudar_partido(p2)
c1.mostrar_candidato