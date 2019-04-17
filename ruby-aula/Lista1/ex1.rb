class Pessoa
    def initialize(nome)
        @nome = nome
        #@sexo = sexo
        #@idade = idade
        #@vegetariana = vegetariana
    end
end

class Churrasco
    def initialize(qtd_carne)
        @qtd_carne = qtd_carne
     
    end
    
    def verificarConsumo(pessoa)
       @pessoa = Pessoa
       puts "#{@pessoa}"
    end
end

pe = Pessoa.new("Mauricio")
c = Churrasco.new(10)
c.verificarConsumo