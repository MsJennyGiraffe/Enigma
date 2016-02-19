require_relative 'encryptor'

o = Offset.new
# puts o.rotation_with_offset

e = Encryptor.new("poop", [2,2,2,2])
puts e.encrypt
e1 = Encryptor.new("rqqr", [2,2,2,2])
puts e1.decrypt
