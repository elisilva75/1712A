
class Animal
  def comer(racao)
    puts "#{nome} comendo #{racao}"
  end
end

class Dog < Animal
  attr_accessor :nome, :raca, :cor

  # construtor
  def initialize(n)
    self.nome = n
  end

  def fala
    puts "#{nome} diz: au au"
  end
end

class Cat < Animal
  attr_accessor :nome

  # construtor
  def initialize(n)
    self.nome = n
  end

  def fala
    puts "#{nome} diz: miau"
  end
end

dog1 = Dog.new('Spike')
dog1.fala
dog1.comer('Frolic')

dog2 = Dog.new('Beethoven')
dog2.fala
dog2.comer('Purina')

dog3 = Dog.new('Snoop')
dog3.fala
dog3.comer('Champs')

cat1 = Cat.new('Tomm')
cat1.fala
cat1.comer('Wiskas')
