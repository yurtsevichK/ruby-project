# создание методов происходит с помощью ключевого слова def

#метод без аргументов
def divison_1
  puts 'method body'
end

#метод с аргументами
def division_2(name, age = 5, weight)
  puts 'My name is ' + name
  puts 'My age is ' + age.to_s
  puts 'My weight is ' + weight.to_s
end


def division_3(name = '', age = nil, wieght = 70)
  var = 'Hello'
  if name != 'Dasha' && age == nil
    var += " World"
  end
  return var
end

puts division_3('Sasha')