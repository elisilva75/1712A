numero1 = 0
numero2 = 0
total = "Olá"

# em Ruby eu tenho uma tipagem dinamica
# o tipo da variável é definido quando a variável recebe o valor

puts 'Informe o numero 1'
numero1 = STDIN.gets.to_i

puts 'Informe o numero 2'
numero2 = STDIN.gets.to_i

# mostra o tipo
# puts numero1.class
# puts numero2.class

total = numero1 + numero2

# Concacetanação não é tão legal
# puts 'O valor da soma é ' + total.to_s

# Interpolação de strings
puts "O valor da multipicação é #{total}"
