class Revolver
    def initialize(municao,qt_max)
        @municao = municao
        @qt_max = qt_max
    end
    
    def atirar
        unless @municao == 0
            @municao -= 1
        else
            puts "Sem munição"
        end
    end
    
    def recarregar
        unless @municao >= @qt_max
            @municao += 1
        else
            puts "Pente cheio"
        end
    end
    
    def mostrar
        puts "Munição #{@municao}/#{@qt_max}"    
    end
    def trocarpente
       if @municao == @qt_max
           puts "Pente cheio"
       else
           @municao = @qt_max
       end    
    end
end

r = Revolver.new(3,6)
r.mostrar
r.atirar

r.atirar

r.atirar
r.atirar
r.mostrar
r.recarregar
r.mostrar