require_relative 'cart'
require_relative 'item'
require_relative 'real_item'
require_relative 'virtual_item'
require_relative 'item_container'
require_relative 'order'

item1 = VirtualItem.new({ price: 25.0, weight: 20, name: 'Gold' })
item2 = RealItem.new({ price: 70, weight: 300, name: 'Silver' })
item3 = RealItem.new({ price: 120, weight: 1400, name: 'Platinum' })

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3

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