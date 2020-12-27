require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'

@items = []
@items << VirtualItem.new({ price: 2512.0, weight: 20, name: 'gold' })
@items << RealItem.new({ price: 6780, weight: 300, name: 'silver' })
@items << RealItem.new({ price: 150, weight: 1400, name: 'platinum' })

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
