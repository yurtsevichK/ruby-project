class Mobile
  #существуют: геттеры, сеттеры и инишиалайз методы
  # задать некоторые данные
  def price
    # геттер метод, тут мы задаем
    @price
  end

  #геттер метод, где мы получаем значение
  # получить, некоторые данные
  def price=(value)
    @price = value
  end

  #работает, как конструктор, где мы сразу задаем значение переменных
  # установить, некоторые данные при создании класса
  def initialize
    @price = 30
  end
end

mobile1 = Mobile.new
mobile2 = Mobile.new
mobile3 = Mobile.new

mobile1.price = 10
mobile2.price = 20

p mobile1.price
p mobile2.price
p mobile3.price

