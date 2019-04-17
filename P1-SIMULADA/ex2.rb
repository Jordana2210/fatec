class Usuario
    def initialize(email, senha)
        @email = email
        @senha = senha
    end 
    
    def p_apresentacao
        
    end
    
    def deshboard
        
    end
    
    def painel
        
    end
end

class Convidado < Usuario
    def initialize(email, senha)
       super(@email, @senha) 
    end
end

class Autenticado < Usuario
    def initialize(email, senha)
        super(@email, @senha)
    end
end

class Admins < Usuario
    def initialize(email, senha)
        super(@email, @senha)
    end
end