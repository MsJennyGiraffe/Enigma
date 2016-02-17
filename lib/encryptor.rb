#should hold:
  #def encrypt
  #def decrypt
  #hash

class Encryptor

  def code(rotation)
    @base_alphabet = ('a'..'z').to_a
    @rotated_alphabet = @base_alphabet.rotate(rotation)
    Hash[@base_alphabet.zip(@rotated_alphabet)]
  end

  def split_message

  end

  def encrypt(key, offset)

  end

  def decrypt

  end

end
