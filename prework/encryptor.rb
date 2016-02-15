#code-along https://github.com/turingschool/curriculum/blob/master/source/projects/encryptor.markdown
require 'pry'

class Encryptor
  def cipher(letter, rotation)
      characters = (' '..'z').to_a
      characters_rotated = characters.rotate(rotation)
      Hash[characters.zip(characters_rotated)]
  end

  def encrypt_letter(letter,rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    encrypt_letter(rotation)

  end
end

e =  Encryptor.new
e.cipher("a", 2)
