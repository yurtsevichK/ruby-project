require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'string'
require_relative 'antique_item'

@items = []
@items << VirtualItem.new({ price: 240.0, weight: 290, name: 'gold' })
@items << AntiqueItem.new({ price: 222.0, weight: 220, name: 'ice' })
@items << RealItem.new({ price: 432, weight: 243, name: 'car' })
@items << RealItem.new({ price: 422, weight: 263, name: 'bike' })

cart = Cart.new('amg')
cart.add_item(RealItem.new({ price: 432, weight: 243, name: 'car' }))
cart.add_item(RealItem.new({ price: 422, weight: 263, name: 'bike' }))

p cart.kind_of? Cart
p @items.first.kind_of? Item

#проверяем цену первого товара ДВУМЯ СПОСОБАМИ(С УЧЕТОМ НАЛОГА И СКИДКИ)
p @items.first.send :price
p @items.first.price

#метод SEND, позволяет получить доступ приватного метода обьекта, без него ошибка
p @items.first.send :tax

=begin
cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3
p cart
p cart.items.size
p cart.items

cart.delete_invalid_items


order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
p order.items.size
p order.items

p Item.discount.to_s + ' Discount'
p item1.price.to_s + ' Price + tax'
p item1.real_price.to_s + ' Real price'

p order.count_valid_items

=end
