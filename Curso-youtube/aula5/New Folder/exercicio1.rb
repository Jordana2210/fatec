class Esportista
    def competir
        puts "Participando de uma competição"
    end
end

class Jogador_de_futebol < Esportista
    def correr
        puts 'correndo atras de bola'
    end
end

class Maratonista < Esportista
    def correr
       puts 'Percorrendo o circuito' 
    end
end

esportista = Esportista.new
jogador = Jogador_de_futebol.new
maratonista = Maratonista.new

jogador.competir
jogador.correr

maratonista.competir
maratonista.correr