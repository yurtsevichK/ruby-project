class Laptop
  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

  attr_accessor :price, :weight
end

laptop1 = Laptop.new({weight: 1500, price: 5000})
laptop2 = Laptop.new({weight: 1900, price: 3000})

p laptop1
p laptop2