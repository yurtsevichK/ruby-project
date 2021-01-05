require 'rspec'
require_relative '../item_container'

class ItemsContainer
  include ItemContainer
end

describe ItemContainer do
  before(:each) do
    @container = ItemsContainer.new
  end

  it 'adds items to container' do
    item1= Item.new('car', price:432)
    item2= Item.new('bike', price:300)
  end
end