require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'offset'

e = Encryptor.new
puts e.code(3)
