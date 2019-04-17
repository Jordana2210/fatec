class Imc
    def initialize(altura, peso)
        @altura = altura
        @peso = peso
        if @altura >= 0.5 and @altura <= 2.2
            @altura = altura
        else
            puts "Altura inválido"
        end
        
        if @peso >= 0.1 and @peso <= 300
            @peso = peso
        else
            puts "Peso inválido"
        end
    end
    
       
    def calculo_imc
       imc = @peso/(@altura*@altura)
        case imc
            when (0..18)
                puts "magro demais, deixa eu te fazer uma canja. by: vó"
            when (19..25)
                puts "No pesinho, hein"
            else
                puts "fecha a boca"
        end
    end
    
end

i = Imc.new(1.67,62)
i.calculo_imc