# класс
class Item
  name = 'Dasha'

  def price
    #метод rand - это РАНДомное число
    return rand 100
  end
end

# объекты, которые содержат в себе данные класса Item
item1 = Item.new
item2 = Item.new
p item1.price
p item2.price



