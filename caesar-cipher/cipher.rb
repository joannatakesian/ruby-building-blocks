def cipher(string, shift)
    alphabet = Array('a'..'z')
    encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |a| encrypter.fetch(a, " ") }
end

puts "Enter a phrase to encrypt:"
string = gets.chomp.to_s

puts "Enter a key:"
shift = gets.chomp.to_i

puts cipher(string, shift).join