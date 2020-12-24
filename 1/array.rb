#старый синтаксис
array1 = ['Dasha', 'Masha', 'Pasha']

#новый синтаксис
array2 = %w[Dasha Masha Pasha]

p array1
p array2

#обращение к индексу массива
p array1[1]
p array2[2]

#добавляем в конец массива еще один обьект
array1.push('Vlad')
p array1

#метод ПОП удаляет последний элемент в массиве
array2.pop
p array2

#метод шифт удаляет первый елемент массива
array2.shift
p array2