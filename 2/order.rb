require_relative 'item_container'

class Order
  attr_reader :items
  include ItemContainer

  def initialize
    @items = []
  end
end
