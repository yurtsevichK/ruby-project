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
    p string.chars
  end
end

RubyTutorial.description
