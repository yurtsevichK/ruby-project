array = %w[Dasha Masha Pasha]
hash = { name: 'Dasha', age: 21, height: 175 }

#данный итератор принимает аргументы
array.each { |name| puts name }
# #одинаковые записи
# array.each do |name|
#   if name == 'Masha'
#     array.push('Sasha')
#   end
#   puts name
# end

# 5 раз выводим Хелло Руби
5.times { puts 'Hello Ruby' }

hash.each_key { |i| puts i }

array.each_with_index { |value, index| puts value.to_s + ' ' + index.to_s }

File.open("block.txt", "w") { |y| y.puts "hello ruby" }
