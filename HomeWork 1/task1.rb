mass = [1, 6, 3, 2, 5, 6, 7, 8, 9, 2, 0]

# 1. Знайти індекс мінімального елемента.
min_index = mass.index(mass.min)
puts "1) Індекс мінімального елемента: #{min_index}"

# 2. Знайти індекс максимального елемента.
max_index = mass.index(mass.max)
puts "2) Індекс максимального елемента: #{max_index}"

# 3. Знайти індекс першого мінімального елемента.
first_min_index = mass.index(mass.min)
puts "3)Індекс першого мінімального елемента: #{first_min_index}"

# 4. Знайти індекс першого максимального елемента.
first_max_index = mass.index(mass.max)
puts "4)Індекс першого максимального елемента: #{first_max_index}"

# 5. Упорядкувати його за зростанням.
sorted_up = mass.sort
puts "5) Упорядковано за зростанням: #{sorted_up}"

# 6. Упорядкувати його за спаданням.
sorted_down = mass.sort.reverse
puts "6) Упорядковано за спаданням: #{sorted_down}"

# 7. Знайти два найбільші елементи.
two_max = mass.max(2)
puts "7) Два найбільші елементи: #{two_max}"

# 8. Знайти два найменших елементи.
two_min = mass.min(2)
puts "8) Два найменші елементи: #{two_min}"

# 9. Вивести спочатку всі його парні елементи, а потім - непарні.
even_then_odd = mass.select(&:even?) + mass.select(&:odd?)
puts "9) Парні → непарні: #{even_then_odd}"

# 10. Вивести спочатку всі його непарні елементи, а потім - парні.
odd_then_even = mass.select(&:odd?) + mass.select(&:even?)
puts "10) Непарні → парні: #{odd_then_even}"

# 11. Знайти середнє арифметичне його елементів.
average = mass.sum.to_f / mass.size
puts "11) Середнє арифметичне: #{average.round(2)}"

# 12. Знайти всі парні елементи
even_elements = mass.select { |x| x.even? }
puts "12) Парні елементи: #{even_elements}"

# 13. Знайти всі непарні елементи
odd_elements = mass.select { |x| x.odd? }
puts "13) Непарні елементи: #{odd_elements}"

# 14. Знайти кількість парних елементів
even_count = mass.count { |x| x.even? }
puts "14) Кількість парних елементів: #{even_count}"

# 15. Знайти кількість непарних елементів
odd_count = mass.count { |x| x.odd? }
puts "15) Кількість непарних елементів: #{odd_count}"