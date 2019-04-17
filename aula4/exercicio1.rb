#SOBRESCRITA: USO DO MESMO NOME
#DE METODO NAS SUBCLASSES. 
#ELA GENERALIZARA UM COMPORTAMENTO
#A PARTIR DESSE NOME.
class Figura
    def initialize(base, altura)
       @base = base
       @altura = altura
    end
end

class Quadrado < Figura
    def initialize(base, altura) 
        super(base,altura)
    end
    
    def calcularArea
       area = @base * @altura
       puts "A área do quadrado é #{area}"
    end
    
    def calcularPerimetro
        perimetro = @base * 4
        puts "O perímetro do quadrado é #{perimetro}"
    end
end

class Retangulo
    def initialize(base, altura)
        super(base, altura)
    end
    
    

end

f = Figura.new(2,2)
q = Quadrado.new(2,2)
q.calcularArea
q.calcularPerimetro