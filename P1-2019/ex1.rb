class Produto
    def initialize(nome,preco)
        @nome = nome
        @preco = preco
    end
    
    def mostrar_xml
        puts "<Produto><nome>#{@nome}</nome><preco>#{@preco}</preco></Produto>"
    end
end

p = Produto.new("TESTE", 5.5)
p.mostrar_xml