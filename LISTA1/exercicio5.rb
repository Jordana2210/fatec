class Jogo_adivinhacao
   def sortear
     puts  @sorteio = rand(0..99)
   end 
   
   def adivinhar
       @contador = 0
       
        while @tentativa != @sorteio
                @tentativa = rand(0..99)
                @contador += 1
                if @sorteio == @tentativa
                    puts "A sua sugestão foi #{@tentativa}"
                    puts "Parabéns! Você acertou. O número é #{@sorteio}. Total de sugestões #{@contador}"
                  
                else
                    puts "Não acertou!"
                end
        end
        
        
   end
end

j = Jogo_adivinhacao.new
j.sortear
j.adivinhar