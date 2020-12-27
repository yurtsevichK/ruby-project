class RubyTutorial

  #парралельное присваивание переменных
  def self.description
    a, b, c = 1, 2, 3

    #оператор ".. - обозначает включительно
    for i in 0..5
      p i
    end
    #выведет до 4 "..." - обозначает ДО
    for i in 0...5
      p i
    end
    #создали массив
    array = %w[sasha masha petya]
    #выводим элементы массива двумя способами,
    # 1 старый, второй новый, более предпочтительный
    array.map { |i| p i }
    array.map(&method(:p))

    # выводим, сколько методов соедржит обьект 1
    p 1.methods

    #делает все символы маленькими
    p 'SASHA'.downcase
    #делает все символы большими
    p 'sasha'.upcase

    #первая буква станет большой
    p 'sa da ma za'.capitalize

    string = 'sasha masha'
    #делаем массив, при помощи чарс, происходит создание массива, где все символы,
    # стали элементами массива
    p string.chars
    #делаем массив, при помощи split, происходит создание массива, где sashma i masha
    # становятся двумя эелемнтами массива
    p string.split

    array1 = %w[kostya liza vika]
    #выводим индекс массива
    p array1.find_index('kostya')

    array2 = [1, 2, 3, 4]
    # показывает нечетные, а потом четные
    array2.find_all { |num| p num.odd? }
    array2.find_all { |num| p num.even? }

    array2.map { |str| p str.to_s.length }

    #создали хеш и вывели его перевернутым при помощи реверс_ич
    # to_h - это в хеш
    hash = { car: 'audi', name: 'a8', engine: 'v12' }
    p hash.reverse_each.to_h
    p hash.empty? #проверка пустой ли?
    p hash.size #отдает размер хеша
    p hash.keys #отдает ключи хеша
    p hash.include? :car

    [['audi', 'black', 2008], ['bmw', 'red', 2019]].each do |car, color, year|
      puts "car: #{car}, color: #{color}, year: #{year}"

    end

  end
end

RubyTutorial.description
