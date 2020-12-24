class Computer

  #РЕЧЬ ИДЕТ ОБ АТРИБУТОРАХ

  #так выглядит короткая запись геттеров
  attr_reader :price, :height

  #так выглядит короткая запись сеттеров
  attr_writer :price, :height

  #данная запись позволяет нам, сразу создать геттеры и сеттеры
  attr_accessor :old, :model

end

computer1 = Computer.new
computer2 = Computer.new
computer3 = Computer.new

computer1.price = 1000
computer2.price = 2000
computer3.model = 'Dell'

puts 'Price= ' + computer1.price.to_s

# p выводит как строку, и покащывает это, таким обращом, что выводимое оказывается в  "КАВЫЧКАХ"
p 'Price= ' + computer2.price.to_s

puts 'Model: ' + computer3.model.to_s