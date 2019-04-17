class Jogo
    def initialize(numeros)
        @numeros = numeros
        @num = 0
    end
    
    def sortear
       @num = (rand(0..99))
       puts "#{@num}" 
    end
    
    def adivinhar
        
        if @numeros == @num
            puts 'Está correto'
        else
            puts "Está errado, o numero digitado foi #{@numeros}"
        end
    end
end

j = Jogo.new(2)
j.sortear
j.adivinhar
