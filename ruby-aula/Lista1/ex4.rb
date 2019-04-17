class Triangulo
    
    def initialize(lado)
        @lado = lado
    end
    
    def calArea
        puts "A área é #{@lado*(Math.sqrt(3)/2)}"
    end
    
    def perimetro
        puts "O perímetro é #{3*@lado}"
    end
end

t = Triangulo.new(2)
t.calArea
t.perimetro