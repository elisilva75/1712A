
# instrutores = Array.new

# instrutores = ['Fernando', 'Demis', 'Oscar', 'Caio']

# # todo indice de um array começa com???? 0



# def imprime_instrutores(inst)
#     if inst
#         puts inst
#     else
#         puts 'not found'
#     end
# end

# imprime_instrutores(instrutores[5])


avengers = [
    {
        :nome => 'Bruce Barner',
        :email => 'brunce@marvel.com'
    },
    {
        :nome => 'Tony Stark',
        :email => 'tony@stark.com'
    },
    {
        :nome => 'Steve Rogers',
        :email => 'steve.rogers@marvel.com'
    }
]

new_avengers = [
    {
        :nome => 'Peter Parker',
        :email => 'perter@marvel.com'
    }
]

all_avengers = avengers.concat(new_avengers)

# for each
# all_avengers.each do |vingador|
#     if vingador[:email].include?('@marvel')
#         puts vingador
#     end
# end

# for

# for i in 0..(all_avengers.size-1) do
#     puts all_avengers[i]
# end

# while

=begin
idx = 0
max = all_avengers.size

while idx < max
    puts all_avengers[idx]
    idx += 1
end

=end

#cadastrar 5 usuários


# def cadastra(usuario, senha)
#     puts "Cadastrando o usuário #{usuario}, com a senha #{senha}"
# end

# usuarios = [
#     {:nome => 'Fernando', :senha => '123456'},
#     {:nome => 'Oscar', :senha => '123456'},
#     {:nome => 'Demis', :senha => '123456'},
#     {:nome => 'Caio', :senha => '123456'},
#     {:nome => 'Borel', :senha => '123456'},
#     {:nome => 'Outro', :senha => '123456'},
# ]

# usuarios.map do |u|
#     cadastra(u[:nome], u[:senha])
# end
