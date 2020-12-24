Dir["*.rb"].each { |file| require_relative file }

item1 = VirtualItem.new({ price: 25, weight: 300, name: 'Gold' })
item2 = RealItem.new({ weight: 300, name: 'Gold' })

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items

cart.delete_invalid_items
