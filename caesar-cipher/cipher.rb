def cipher(string, shift)
    encrypted_string = []
    alphabet = ('a'..'z').to_a.join
    shifted = alphabet.chars.rotate(shift).join
    
    string.downcase.split('').each do |letter|
        alphabet.split('').each_with_index do |char, index|
            if char == letter
                encrypted_string << shifted[index]
            end
        end
    end
    
    puts encrypted_string.join
end