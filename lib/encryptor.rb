class Encryptor

  #first, make one given rotation pass.
  #then work on multiple rotations.

  def takes_the_rotations_method(offset.rotation_with_offset)
    #takes parameters and splits into four different rotaions? (0-3, a-d?)
  end

  def accept_message_method(input_message)
    #I dont think this is necessary, but ??? profit
    #accepts a message that needs to be encoded/decoded
    #message should be sent to split message
  end

  def code(rotation)
    #creates an alphabet base language for encryption and an output language for decryption
    @base_alphabet = ('a'..'z').to_a
    @rotated_alphabet = @base_alphabet.rotate(rotation)
    Hash[@base_alphabet.zip(@rotated_alphabet)]
  end

  def split_message_method(accept_message_method)
    #accept the message as a parameter? and splits the message into an array of characters
  end

  def encrypt_method(split_message_method)
    #uses the rotations+ (a-d, 0-3?) to create an encrypted message
    #uses the split message method
  end

  def decrypt_method(split_message_method)
    #uses the rotations- (a-d, 0-3?) to create an decrypted message
  end

  def outputs_message(encrypt/decrypt_methods)
    #a method that displays the encryted or decrypted message
  end

end
