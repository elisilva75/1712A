require_relative '../app/conta'

## TDD => Testing Driven Development
# (Desenvolvimento guiado por testes)

describe('Conta') do

    it('deve realizar um saque') do
        c = Conta.new('Fernando', 100.00)
        c.saca(50.00)
        expect(c.saldo).to eql 50.00
    end

    it('deve exibir mensagem de saldo insuficiente') do
        c = Conta.new('Oscar', 100.00)
        c.saca(101.00)
        expect(c.saldo).to eql 100.00
        expect(c.mensagem).to eql 'Saldo insuficiente.'
    end

    it('quando o cliente saca um valor superior ao permitido') do
        c = Conta.new('Demis', 1000.00)
        c.saca(801.00)
        expect(c.saldo).to eql 1000.00
        expect(c.mensagem).to eql 'Saque máximo permitido é de R$ 800'
    end


end