# класс
class Item
  attr_reader :real_price, :name
  attr_writer :price

  @@discount = 0.1

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
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
    if Time.now.month == 12
      @@discount + 0.3
    else
      @@discount
    end
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax
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



