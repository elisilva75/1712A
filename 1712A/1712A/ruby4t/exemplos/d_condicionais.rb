

# Product Owner (PO) / Cliente

# atendimento do barman
# deve perguntar a idade, quando o cliente pede uma bebida
# o barman deve surgir, a bebida de acordo com a idade do cliente

# RN1 Se a idade for maior ou igual 18, então o sistema sugerir uma cerveja
# RN2 Se a idade for menor que 18, então o sistema deve sugerir um suco
# RN3 Se a idade for menor ou igual a 14, então o sistema deve surgeir um copo de leite

puts 'Qual a sua idade?'
idade = STDIN.gets.to_i

puts idade >= 18
puts idade >= 15

if idade >= 18
    puts 'Aceita uma cerveja?'
elsif idade >= 15
    puts 'Aceita um suco?'
else
    puts 'Você só pode beber leite. #perdeu'
end
