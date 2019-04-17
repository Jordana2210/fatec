=begin
Implemente uma classe Lâmpada. Toda lâmpada possui
um estado (on/off). Sabe-se que as lâmpadas podem ter seu estado
trocado (click do interruptor). Será necessário também uma funcionalidade
para checar o estado atual da lâmpada. Uma lâmpada estraga após
uma quantidade de clicks (o click não troca mais o estado deixando-a
eternamente em off) e esta depende da lâmpada. Implemente esta situação
e seu teste.
=end
class Lampada
    def initialize(estado)
        @estado = estado
        @click = 0 
    end
    
    def trocar_estado
        @click += 1
            if  @estado == 'on'
                @estado = 'off'
            else 
                @estado = 'on'
            end
    end
    
    def mostrar_estado
        if @click > 3
            puts "Lâmpada queimada"
        else
           puts @estado
        end
    end
end

l = Lampada.new('on')
l.trocar_estado
l.mostrar_estado

