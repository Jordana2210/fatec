class Pessoa
    
    def initialize(nome,sexo,idade,vegetariana)
        @nome = nome
        @sexo = sexo
        @idade = idade
        @vegetariana = vegetariana
    end
    
    def nome
        @nome
    end
    
    def sexo
        @sexo
    end
    
    def idade
        @idade
    end
    
    def vegetariana
        @vegetariana
    end
    
end

class Churrasco
    def initialize(qtde_carne)
        @qtde_carne = qtde_carne
    end
    
    def verificar_consumo(pessoa)
        if pessoa.idade <=  3 or pessoa.vegetariana == true
            puts 'Não consome carne!'
        elsif pessoa.idade >= 4 and pessoa.idade <= 12
            puts 'Consomem 1 kilo de carne'
        else
            puts 'Mais de 12 anos consome 2 kilos'
        end
    end
end

pessoa = Pessoa.new('Jordana','Feminino',21,false)
churrasco = Churrasco.new(20)
churrasco.verificar_consumo(pessoa)