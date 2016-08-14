puts "Enter your text:"
text = gets.chomp.downcase.split(" ")

puts "Enter your dictionary:"
dictionary = gets.chomp.downcase.split(", ")

dictionary.each do |entry|
    counter = 0
    text.each do |word|
        if entry == word
            counter += 1
        end
    end
    puts "#{entry}: #{counter}"
end