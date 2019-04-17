=begin
    Exercício 1.2. Implemente a classe Cliente que possua os atributos
nome, saldo e limite. Esta deve conter os métodos sacar(double val),
depositar(double val), e gets para nome, saldo e limite. Sabe-se
que só é possível sacar se o saldo+limite forem superiores a quantia. O método checar saldo deve retornar o valor saldo mais o limite
limite. Implemente, também, uma classe Doc que possui o método
transferir(Cliente c1, Cliente c2, double quantia) que saca
uma quantia de c1, se este tiver saldo, e deposita na conta de c2.
Implemente também alguns testes. É proíbido usar conceitos que ainda
não foram abordados.

=end
class Cliente
    def initialize(nome, saldo, limite)
        @nome = nome
        @saldo = saldo
        @limite = limite
    end
    
    def saldo
        dinheiro = @saldo + @limite
    end
    
    def checar_saldo(quantia)
        @quantia = quantia
        if saldo > @quantia
            puts "saque realizado c sucesso"
            puts "#{@quantia}"
            #puts saldo - @quantia
        else
            puts "Saque não permitido"
        end
    end
    

    def depositar(quantia)
      @saldo = @saldo + quantia
    end
end

class Doc
    def Transferir(cliente1, cliente2, quantia)
        @cliente1 = cliente1
        @cliente2 = cliente2
        @quantia = quantia
        
        @cliente1.checar_saldo(@quantia)
    
   end
    
end

c1 = Cliente.new('mauricio',200,700)
c2 = Cliente.new('Jordana',900,1000)
d = Doc.new
d.Transferir(c1,c2,500)