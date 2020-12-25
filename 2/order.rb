class Order

  require_relative 'item_container'

  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end

  # send message to user
  def notification

  end
end
