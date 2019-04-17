class Triangulo_equilatero
    def initialize(lado)
        @lado = lado
    end
    
    def calc_area
        puts @lado * (Math.sqrt(5)/2)
    end
    
    def calc_perimetro
        puts 3*@lado
    end
end

t = Triangulo_equilatero.new(2)
t.calc_area
t.calc_perimetro