require_relative 'init'
require_relative 'cart'

cart = Cart.new

ARGV.each do |arg|
  @items.each { |obj| cart.add_item obj if arg == obj.name }
end

p cart.items