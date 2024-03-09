# Дан рандомный массив
random_array1 = Array.new(rand(1..50)) { rand(-100..100) }
random_array2 = Array.new(rand(1..50)) { rand(-100..100) }
random_array3 = []
random_array4 = Array.new(rand(1..50)) { rand(1..5) }

# Нужно вывести:

# - Количество элементов в массиве
puts "Количество элементов в массиве: #{random_array1.length}"

# - Какое самое большое число
puts "Какое самое большое число: #{random_array1.max}"

# - Какое самое маленькое
puts "Какое самое маленькое: #{random_array1.min}"

# - Сколько отрицательных чисел
puts "Сколько отрицательных чисел: #{random_array1.count { |el| el < 0 }}"

# - Сколько положительных
puts "Сколько положительных: #{random_array1.count { |el| el > 0 }}"

# - Сумма отрицательных
puts "Сумма отрицательных: #{random_array1.select { |el| el < 0 }.sum}"

# - Сумма положиетельных
puts "Сумма положиетельных: #{random_array1.select { |el| el > 0 }.sum}"

# - Сумма всех чисел в массива
puts "Сумма всех чисел в массива: #{random_array1.sum}"

# - Являются ли все числа четные
puts "Являются ли все числа четные: #{random_array1.all? { |el| el.even? }}"

# - Являются ли все числа нечетные
puts "Являются ли все числа четные: #{random_array1.all? { |el| !el.even? }}"

# - Содержить ли массив числа больше 80?
puts "Содержить ли массив числа больше 80?: #{random_array1.any? { |el| el > 80 }}"

# - Содержит ли массив дубликаты?
puts "Содержит ли массив дубликаты?: #{random_array1.uniq! != nil}"

# - Сложить два массива random_array1 и random_array2 в новый массив random_array3
# оставив в нем только уникальные символы и вывести в отсортированном виде от меньшего
# к большему
random_array3 = (random_array1 + random_array2).uniq
puts " Сложить два массива random_array1 и random_array2 в новый массив random_array3 
оставив в нем только уникальные символы и вывести в отсортированном виде от меньшего 
к большему: #{random_array3.sort}"

# - Удалить из массива random_array3 все отрицательные числа
puts "Удалить из массива random_array3 все отрицательные числа: #{random_array3.reject! { |el| el < 0 }}"

# - Выведи рандомно 3 элемента массива
puts "Выведи рандомно 3 элемента массива: #{random_array1.sample(3)}"

# - Раздели массив random_array3 на 2 равные части, если количество элементов массива
# нечетное то добавь туда один элемент со случайным числом
random_array3 << rand(-100..100) if random_array3.length.even? == false
puts " Раздели массив random_array3 на 2 равные части, если количество элементов массива 
нечетное то добавь туда один элемент со случайным числом: #{random_array3.each_slice(random_array3.length/2).to_a}"

# - Найти число в random_array4 которое встречается чаще всего
puts "Найти число в random_array4 которое встречается чаще всего: #{random_array4.group_by { |el| el}.max_by { |k, v| v.length }.first}"