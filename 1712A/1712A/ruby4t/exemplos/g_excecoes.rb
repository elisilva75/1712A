

# PO pediu um sistema que faz calculo de IMC
# RN1 se o resultado do cálculo do IMC for maior que 22 => Mano, ta embassado, faz um regime
# RN2 se o resultado do calculo do IMC for menor que 22 => Ta sussa. #PartiuBK

puts 'Informe o seu peso'
peso = STDIN.gets.to_i

puts 'Informe sua altura'
altura = STDIN.gets.to_f

# debug
puts peso
puts altura

def calcula_imc(p, a)
  # return (p / (a*2)).round(2)
  imc = p / (a * 2)
  return imc.round(2)
end

# verifica meu nível de IMC
def estou_embassado(imc)
  if imc > 22
    puts 'Mano, ta embassado, faz um regime'
  else
    puts 'Ta sussa. #PartiuBK'
  end
end

begin
    imc = calcula_imc(peso, altura)
    estou_embassado(imc)
rescue Exception => ex
    puts 'Ocorreu um erro ao calcular o imc. Ligue para 1406'
    puts ex.message
    puts ex.backtrace
end
