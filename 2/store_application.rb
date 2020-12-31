class StoreApplication
  #все методы, будут вызываться без создания экзмпляра класса
  class << self

    attr_accessor :name, :environment

    def set
      unless @store
        yield self
        puts 'loading classes'
        require_relative 'item'
        require_relative 'cart'
        require_relative 'order'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'item_container'
        require_relative 'string'
        require_relative 'antique_item'
      end

      #кладем в инстанс переменную класс
      @store ||= self
    end

    def admin(&block)
      @admin ||= Admin.new(&block)
    end

    class Admin
      class << self
        attr_accessor :login, :email

        def new
          unless @store
            yield(self)
          end
          @store ||= self
        end
      end
    end
  end
end