require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'offset'

# e = Encryptor.new
# puts e.code(3)

#key_generator
# k = KeyGenerator.new
# k.random_number_generator

o = Offset.new("12345", 021616)
o.rotation_with_offset

e = Encryptor.new
puts e.code
