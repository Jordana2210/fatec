class Endereco
    def initialize(rua,cidade,estado)
        @rua = rua
        @cidade = cidade
        @estado = estado
    end
    
    def mostrarEndereco
    
        if @estado == :SP || @estado == :RJ || @estado == :GO || @estado == :MG   
            puts "Endereço: #{@rua},#{@cidade}-#{@estado}"
        else
            puts "Endereco Invalido"  
        end
    end
end

e = Endereco.new("Eliseu Visconde","Itanhaem",:AM)
e.mostrarEndereco