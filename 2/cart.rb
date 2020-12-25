class Cart

  require_relative 'item_container'
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end
end