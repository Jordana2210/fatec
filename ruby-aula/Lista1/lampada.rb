class Lampada
    def initialize(estado)
        @estado = estado
        @i = 0
    end
    
    def click
        @i = @i+1
        
        if @estado == true
           @estado = false
        else
           @estado = true
        end
        
    end
    
    def status
        if @i >3 
           puts "Pifou!Lâmpada Desligada para sempre"
        elsif @estado == true
            puts "Lâmpada Ligada"
        else
            puts "Lâmpada Desligada"
        end
    end
end

l = Lampada.new(false)
l.click
l.click
l.click
l.click
l.status