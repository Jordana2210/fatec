=begin
Dada a classe Pessoa, que possui os atributos: String
nome, String sexo, int idade, boolean vegetariana. Faça agora uma
classe Churrasco que possua:
Atributos: qtdCarne(double);
Método: verificarConsumo(): Recebe via parâmetro uma Pessoa, e com
isto define a consumação média de carne(quantidade de carne consumida),
pessoas de 0 a 3 anos não consomem, vegetarianos também não.
Pessoas de 4 a 12 anos consomem 1 kilo de carne e de 13 anos em diante
2 kilos de carne.
=end

class Pessoa 
    def initialize(nome, sexo, idade, vegetariana)
        @nome = nome
        @sexo = sexo 
        @idade = idade
        @vegetariana = vegetariana
    end
    
    def idade
        @idade
    end
    
    def vegetariana
       @vegetariana
    end
end

class Churrasco
    def initialize(qtdCarne)
        @qtdCarne = qtdCarne
    end
    def verificar_consumo(pessoa)
        puts "Quantidade de carne disponível é #{@qtdCarne}"
        if pessoa.idade <= 3 or pessoa.vegetariana == true
            puts "Não consomem carne!"
        elsif pessoa.idade >= 4 and pessoa.idade <= 12
            puts "Pessoas de 4 à 12 consomem 1 kilo de carne."
            @qtdCarne -= 1
        else
            puts "Pessoas maiores de 13 consomem 2 kilos de carne."
            @qtdCarne -= 2
        end
        
        puts "Quantidade atual de carne #{@qtdCarne}"
    end
    
end

p1 = Pessoa.new("Jordana",:F,21,false)
p2 = Pessoa.new("Mauricio",:M,35,false)
c1 = Churrasco.new(12)
c1.verificar_consumo(p1)
c1.verificar_consumo(p2)
