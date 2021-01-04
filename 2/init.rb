require_relative 'store_application'

StoreApplication.set do |app|
  app.name = 'Ruby App'
  app.environment = :development

  app.admin do |admin|
    admin.email = 'ncyurtsevich@gmail.com'
    admin.pass = 'jreozavod'
    admin.login = 'admin'
  end
end

@items = []
@items << VirtualItem.new('gold', price: 240.0, weight: 290)
@items << AntiqueItem.new('ice', price: 222.0, weight: 220)
@items << RealItem.new('car', price: 432, weight: 243)
@items << RealItem.new('bike', price: 422, weight: 263)

cart = Cart.new('amg')
cart.add_item(RealItem.new('car', price: 432, weight: 243))
cart.add_item(RealItem.new('bike', price: 422, weight: 263))

p cart.send :all_cars
p StoreApplication.name
p StoreApplication.environment
p StoreApplication.admin.login

order = Order.new
@items.each { |i| order.add_item i }
order.place

=begin
p cart.kind_of? Cart
p @items.first.kind_of? Item

#проверяем цену первого товара ДВУМЯ СПОСОБАМИ(С УЧЕТОМ НАЛОГА И СКИДКИ)
p @items.first.send :price
p @items.first.price

#метод SEND, позволяет получить доступ приватного метода обьекта, без него ошибка
p @items.first.send :tax
=end

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
