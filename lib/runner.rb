require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'offset'

# e = Encryptor.new
# puts e.code(3)

#key_generator
k = KeyGenerator.new
k.random_number_generator

o = Offset.new(k.random_number_generator, 021616)
o.positioning_offset_numbers
