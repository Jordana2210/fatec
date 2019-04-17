class Cliente
   def initialize(nome,saldo,limite)
        @nome = nome
        @saldo = saldo
        @limite = limite
   end
   
    def sacar(money)
        @money = money
        if money < checar_saldo
            puts 'Saque realizado com sucesso'
        else
            puts 'saque não realizado'
        end
    end
    
    def checar_saldo
      total=@saldo+@limite 
    end
    
    def depositar(money)
        @money = money
        puts 'Dinheiro depositado c/ sucesso'
    end
    
    def nome
        @nome
    end
    
    def saldo
        @saldo
    end
    
    def limite
        @limite
    end
end

class Doc
    def Transferir(c1, c2, quantia = double)
       @c1 = cliente1
       @c2 = cliente2
       @quantia = quantia
    end
    
    def Cliente1(saldo,limite)
        @saldo = saldo
        @limite = limite
        
        if cliente.checar_saldo
        
    end
end
c = Cliente.new('MAURICIO',210,1000)
c.checar_saldo
c.sacar(1900)
