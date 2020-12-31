class RealItem < Item
  attr_accessor :weight

  def initialize(name, options)
    @weight = options[:weight]
    @name = name
    super
  end

  def info
    if block_given?
      yield weight
      super
    end
  end

end