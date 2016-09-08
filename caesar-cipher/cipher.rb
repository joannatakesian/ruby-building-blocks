class Cipher
    def encrypt(string, shift)
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

        return encrypted_string.join
    end
end

#my_model.rb
class MyModel
  def the_truth
    true
  end
end