def to_pig_latin(sentence)
  words = sentence.split(/\b/)

  pig_latin_words = words.map do |word|
    if word.match?(/\A[a-zA-Z]+\z/)
      first_letter = word[0]
      rest = word[1..-1]
      "#{rest}#{first_letter}ay"
    else
      word 
    end
  end

  pig_latin_words.join
end

puts "Введіть речення для перетворення в Pig Latin:"
input = gets.chomp
result = to_pig_latin(input)
puts "#{result}"