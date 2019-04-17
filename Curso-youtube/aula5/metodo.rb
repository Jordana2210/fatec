#-- o q são metodos?
#Métodos são uma forma de organizar instruções em um programa, permitindo que trechos
#de códigos sejam reutilizados.


def hello(name)
    puts "olá #{name}"
end

hello "Jordana"
hello "Mauricio"

def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name }, como você está?"
end

nome = "Jordana"
sobrenome = "Martell"

talk(nome, sobrenome)
talk('Mauricio', 'Sponton')

#sobreescrever valor
def signal(color = 'vermelho')
   puts "O sinal está #{color}" 
end

signal

color = 'verde'
signal(color)