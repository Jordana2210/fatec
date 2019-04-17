class Biblioteca
    def initialize(nome)
        @nome = nome
        @estantes = []
    end
    
    def inserir_estante(estante)
        @estantes << estante
    end
    
    def nome
        @nome
    end
    
    def mostrar_estante
        for estante in @estantes
            estante.info_estante
            estante.listar_livros
            puts "Nome da biblioteca: #{@nome}"
        end
    end
    
end

class Estante
    def initialize(nome, categoria)
        @nome = nome
        @categoria = categoria
        @livros = []
    end
    
    def categoria
        @categoria
    end
    
    def nome 
        @nome
    end
    
    def info_estante
       puts "INFORMAÇÃO DA ESTANTE"
       puts "Nome: #{@nome}"
       puts "Categoria: #{@categoria}"
    end
    
    def inserir_livro(livro)
        @livros << livro
    end
    
    def listar_filosofia
        @nome_livros = []
        for livro in @livros
            if @categoria == "Filosofia"
                @nome_livros << livro.nome
            end
        end
        puts "Livros: #{@nome_livros}"
    end
    
    def contar_ciencia
        @soma = 0
        for livro in @livros
            if @categoria == "Ciência" 
                @soma = @soma + 1
            end
        end
        puts "A quantidade de livros de ciência é: #{@soma}"
    end
    def listar_livros
        for livro in @livros
            livro.exibir_livro
        end
    end
    def removerLivro(parametro)
       for livro in @livros 
            if livro == parametro
                @livros -= [parametro]
            end
       end 
    end
    
            
end

class Livro
    def initialize(nome, autor, ano_publicacao)
        @nome = nome
        @autor = autor
        @ano_publicacao = ano_publicacao
    end
    
    def nome
        @nome
    end
    
    def autor
        @autor
    end
    
    def ano_publicacao
        @ano_publicacao
    end
    
    def exibir_livro
       puts "Nome do livro: #{@nome}"
       puts "Nome do Autor: #{@autor}"
       puts "Ano da publicação: #{@ano_publicacao}"
    end
    
end

#criando o obj livro
l1 = Livro.new("HP-PF", "JK R", 1997)
l2 = Livro.new("AFDR", "GRRM", 2010)
l3 = Livro.new("Bundas paralelas", "Q?", 2010)
l4 = Livro.new("Macacos singelos", "Q!", 2480)
l5 = Livro.new("O origem das bundas aladas", "Taz",1000)
#--
b = Biblioteca.new("Fatec")#criando o obj biblioteca
e = Estante.new("F", "Filosofia")#criando estante
e2 = Estante.new("C", "Ciência")

b.inserir_estante(e)#inserindo estante na biblioteca
b.inserir_estante(e2)


e.inserir_livro(l1)
e.inserir_livro(l2)
e2.inserir_livro(l3)
e.inserir_livro(l4)
e2.inserir_livro(l5)
e.listar_filosofia
e2.contar_ciencia
#b.mostrar_estante
e.removerLivro(l1)
e.listar_filosofia