class Lampada
    def initialize(estado,qt_max)
        @estado = estado
        @click = 0
        @qt_max = qt_max
    end
   
    def clicarLampada
        @click = @click+1
        
        if @estado == true
            @estado = false
        else
            @estado = true
        end
    end
    
    def mostrarStatus
        if @click >= @qt_max
            puts 'Lampada Queimou'
        elsif @estado == true
            puts 'Lampada Ligada'
        else
            puts 'Lampada Desligada'
        end
    end
end

l = Lampada.new(false,2)
l.clicarLampada
l.clicarLampada
l.mostrarStatus