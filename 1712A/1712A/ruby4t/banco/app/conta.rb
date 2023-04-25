
# programa de conta corrente
# deve ter um médodo de depósito
# deve ter um método de saque

class Conta
    attr_accessor :nome, :saldo, :mensagem

    def initialize(nome, saldo)
        self.nome = nome
        self.saldo = saldo
    end

    def deposita(valor)
        self.saldo =+ valor
    end

    def saca(valor)
        if valor > self.saldo
            self.mensagem = 'Saldo insuficiente.'
        elsif valor > 800.00
            self.mensagem = 'Saque máximo permitido é de R$ 800'
        else
            self.saldo -= valor
        end
    end
end
