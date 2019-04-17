class Porta
    def initialize(isOpen)
        @isOpen = isOpen
        @numAberturas = 0
    end
    
    def abrir
        if(@isOpen == true)
            puts 'A porta já está aberta'
        else
            @numAberturas = @numAberturas+1
            @isOpen = true
        end
    end
    
    def fechar 
        @isOpen = false
    end
    
    def mostrar
        if @isOpen == true
            puts 'A porta está aberta'
        else
            puts 'A porta está fechada'
        end
        
        puts "A porta foi aberta #{@numAberturas} vezes"
    end
end

pe = Porta.new(true)
pe.abrir
pe.fechar
pe.abrir
pe.mostrar