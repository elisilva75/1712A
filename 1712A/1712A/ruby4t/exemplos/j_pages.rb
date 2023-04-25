


class LoginPage

    # elementos da minha página
    attr_accessor :campo_usuario
    attr_accessor :campo_senha
    attr_accessor :botao_entrar

    def initialize
        self.campo_usuario = 'id-text-usuario',
        self.campo_senha = 'id-text-senha',
        self.botao_entrar = 'class-btn-entrar'
    end

    def informa_usuario(email)
        puts "preenchendo o valor #{email} no campo usuário do elemento #{campo_usuario}"
    end
    
    def informa_senha(senha)
        puts "preenchendo o valor #{senha} no campo senha do elemento #{campo_senha}"
    end

    def clica_entrar
        puts "clicando no elemento #{botao_entrar} "
    end

end

login = LoginPage.new

login.informa_usuario('eu@papito.io')
login.informa_senha('123456')
login.clica_entrar