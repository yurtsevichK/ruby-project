require 'rspec'
require_relative '../item'
require_relative '../virtual_item'

#ключевое слово describe, далее описываем, то, что будем проверять
describe Item do

  #для каждого теста выполни эту строку
  before(:each) do
    @item = Item.new('car', price: 432)
  end

  #ключивое слово it - обозначает начало теста
  it 'calculates correctly price' do
    expect(@item.price).to be 503.12
  end

  it 'returns correctly info about object' do
    expect(@item.to_s).to include('car:503.12')
  end
end
