name = 'Sasha'

#умножение, деление, сложение, вычитание
add = 2 + 1
div = 2 / 1
mult = 2 * 1
sub = 2 - 1
puts add, div, mult, sub

#операторы сравнения
eq_1 = 1 > 2
eq_2 = 1 < 2
eq_3 = 1 == 2
eq_4 = 2 >= 2
eq_5 = 2 <= 2
puts eq_1, eq_2, eq_3
puts "#{eq_4} #{eq_5}"

puts 2 + 10 * 3 #первое будет умножение, срабатывает правила математики

#оператор И
puts true && false #false
puts false && false #false
puts false && true #false
puts true && true #true

#оператор ИЛИ
puts true || false #true
puts false || true
