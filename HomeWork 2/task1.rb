def find_most_frequent_elements(array)
  frequency = Hash.new(0)
  array.each { |element| frequency[element] += 1 }
  max_frequency = frequency.values.max || 0
  most_frequent = frequency.select { |_, freq| freq == max_frequency }.keys
  most_frequent
end

puts "Введіть елементи масиву:"
input = gets.chomp
array = input.split.map(&:to_i)

result = find_most_frequent_elements(array)

puts "Для масиву #{array} найбільш частий елемент: #{result.join(', ')}"
