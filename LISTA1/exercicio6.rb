=begin
Exercício 1.6. Implemente a classe Eq2Grau que possua:
 Atributos: a,b e c (doubles);
 Métodos: delta(): retorna o delta da equação;
 raiz1(): retorna a primeira raiz se   0, se não retorna NaN;
 raiz2(): retorna a segunda raiz se   0, se não retorna NaN.
=end

class Raiz_quadrada
    def initialize(a,b,c)
       @a = a
       @b = b
       @c = c
    end
    
    def retorna_delta
        @delta = ((@b*2)-(4*@a*@b))
        puts @delta
    end
    
    def raiz1
        if @delta > 0
            puts -@b+(Math.sqrt(@delta))/2
        else
           puts 'NOT A NUMBER' 
        end
    end
    
    def raiz2
        if @delta > 0
            puts -@b-(Math.sqrt(@delta))/2
        else
           PUTS 'NOT A NUMBER' 
        end
    end
end

r = Raiz_quadrada.new(2,4,5)
r.retorna_delta
r.raiz1
