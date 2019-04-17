class Candidato
	def initialize(numero, partido, nome,  votos_recebidos)
		@numero = numero
		@partido = partido
		@nome = nome
		@votos_recebidos = votos_recebidos
	end
	
	def mostrar_candidato
	    puts "O número é #{@numero}
	          O partido é #{@partido}
	          O nome é #{@nome}
	          Votos recebidos #{@votos_recebidos}"
	 end
	 
	 def numero
	     @numero
	  end
	 def votos_recebidos
	    	@votos_recebidos
	 end
	 	def votar
	    @votos_recebidos = @votos_recebidos+1
	end
end

class Eleicao 
	def initialize(ano, candidato)
		@ano = ano
		@candidato = candidato
	end
		
	def mostrar_ano
		puts "O ano da eleição é #{@ano}"
	end
	
	def votar(numero)
	    if numero == @candidato.numero
	      @candidato.votar
	    end
	    
	end
end

c1 = Candidato.new(13, 'PT', 'LULA', 200)
c2 = Candidato.new(17, 'PSL', 'BOLSONARO', 400)	
e = Eleicao.new(2019, c1)
e2 = Eleicao.new(2019, c2)
e.votar(13)
e.votar(13)

e2.votar(17)
c1.mostrar_candidato
c2.mostrar_candidato
