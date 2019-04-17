class Livro
    def initialize(tipo, preco)
        @tipo = tipo
        @preco = preco
    end

    def exibir_livro
       puts "INFORMAÇÕES LIVRO"
       puts "Tipo do livro: #{@tipo}"
       puts "Preço do livro: #{@preco}"
    end
    
end

class Loja
    def initialize
        @livros = []
    end
    
    def adicionar(livro)
        @livros << livro
    end
    
    def exibir_livro
        for livro in @livros
            livro.exibir_livro
        end
    end
    
    def comprar(livro)
        @livros -= [livro]
    end
    
end

loja = Loja.new()
loja.adicionar(l1 = Livro.new("EPUB",20))
loja.adicionar(l2 = Livro.new("PDF",40))
loja.comprar(l1)
loja.exibir_livroclass Livro
    def initialize(tipo, preco)
        @tipo = tipo
        @preco = preco
    end

    def exibir_livro
       puts "INFORMAÇÕES LIVRO"
       puts "Tipo do livro: #{@tipo}"
       puts "Preço do livro: #{@preco}"
    end
    
end

class Loja
    def initialize
        @livros = []
    end
    
    def adicionar(livro)
        @livros << livro
    end
    
    def exibir_livro
        for livro in @livros
            livro.exibir_livro
        end
    end
    
    def comprar(livro)
        @livros -= [livro]
    end
    
end

loja = Loja.new()
loja.adicionar(l1 = Livro.new("EPUB",20))
loja.adicionar(l2 = Livro.new("PDF",40))
loja.comprar(l1)
loja.exibir_livro