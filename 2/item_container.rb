module ItemContainer

  module ClassMethods
    MIN_PRICE = 50
    #MIN_PRICE - константа, пишутся всегда с большой буквы
    def min_price
      MIN_PRICE
    end
  end

  module InstanceMethods
    def add_item(item)
      @items.push item if item.price > self.class.min_price
    end

    def remove_item
      @items.pop
    end

    def validate
      @items.each do |i|
        puts 'Item has no price' if i.price.nil?
      end
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil? }
    end

    def count_valid_items
      @items.count { |i| i.price }
    end

    #создали метод, который будет выводить меседж, в случае, если метод не существует
    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_tem_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        super
      end
    end

    private

    def show_all_tem_with_name(name)
      @items.map { |i| i.to_s if name == i.name }.compact
    end
  end

  # callback на инклуд модуля
  def self.included(classes)
    classes.extend ClassMethods
    classes.class_eval { include InstanceMethods }
  end
end