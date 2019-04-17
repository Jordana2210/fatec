class Bateria
    def initialize(carga)
        @carga = carga
    end

    def descarregar 
        if @carga > 10 and @carga < 100
            @carga -= 10
        else
            puts 'O celular está com pouca bateria p/ descarregar'
        end
    end
    
    def carregar
        if @carga > 0 and @carga < 95
            @carga += 5
        else
            puts 'O celular já está carregado'
        end
    end
    
    def carga
        @carga
    end
end

class Celular
    def initialize(id, nome_user, bateria)
        @id = id
        @nome_user = nome_user
        @bateria = bateria
    end
    
    
    def ligar
        if @bateria.carga >= 20 and @bateria.carga <= 100
           puts @bateria.carga - 20
           puts "SEU NOME:#{@nome_user}"
            
        elsif @bateria.carga > 0 and @bateria.carga < 20
            puts 'Celular com pouca bateria, coloque para carregar'
        else
            puts 'Celular sem carga.'
        end
    end
    
    def desligar
        if @bateria.carga <= 20
            
        else
           @bateria.carga + 20
        end
    end
end


b1 = Bateria.new(0)
b1.descarregar
c1 = Celular.new(90909090, 'Mauricio',b1)
c1.ligar
#c1.desligar