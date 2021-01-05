# класс
class Item
  attr_reader :real_price
  attr_accessor :name

  @@discount = 0.01

  def initialize(name, options = {})
    @real_price = options[:price]
    @name = name
  end

  # создали метод, инфо, в котором получаем информацию переданную в блоки
  # если информация не получена, выводим "Нечего показывать"
  def info
    if block_given?
      yield price, name
    else
      puts 'Nothing to show'
    end
  end

  def self.discount
    if Time.now.month == 1
      @@discount + 0.03
    else
      @@discount
    end
  end

  def price
    if real_price
      (@real_price - @real_price * self.class.discount) + tax if real_price
    end
  end

  def to_s
    "#{self.name}:#{self.price}"
  end

  def price=(value)
    @real_price = value
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price * 0.2
               else
                 @real_price * 0.1
               end
    return cost_tax + type_tax
  end
end



