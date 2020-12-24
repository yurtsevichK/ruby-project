# класс
class Item
  attr_accessor :price, :weight, :name

  def initialize(options = {})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end

  # создали метод, инфо, в котором получаем информацию переданную в блоки
  # если информация не получена, выводим "Нечего показывать"
  def info
    if block_given?
      yield price, weight, name
    else
      puts 'Nothing to show'
    end
  end
end



