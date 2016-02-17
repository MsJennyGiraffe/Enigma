#code-along https://github.com/turingschool/curriculum/blob/master/source/projects/encryptor.markdown
require 'pry'

class Encryptor
  def cipher(rotation)
      characters = (' '..'z').to_a
      characters_rotated = characters.rotate(rotation)
      Hash[characters.zip(characters_rotated)]
  end

  def encrypt_letter(letter,rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    #encrypt_letter(rotation)
    char_array = string.split("")
    new_char_array = []
    char_array.each do |char|
      new_char_array << encrypt_letter(char, rotation)
    end
    puts new_char_array.join
  end

  def decrypt(string, rotation)
    char_array = string.split("")
    new_char_array = []
    char_array.each do |char|
      new_char_array << decrypt_letter(char, rotation)
    end
    puts new_char_array.join
  end

  def decrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation.key(letter)
  end
end

e =  Encryptor.new
e.encrypt("butts", 2)

e.decrypt("dwvvu", 2)
