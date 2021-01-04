require 'rspec'
require_relative '../item'
require_relative '../virtual_item'

#ключевое слово describe, далее описываем, то, что будем проверять
describe Item do
  #ключивое слово it - обозначает начало теста
  it 'calculates correctly price' do
    item = Item.new('car', price: 432)
    expect(item.price).to be 477.20000000000005
  end
end
