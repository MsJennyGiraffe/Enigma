require_relative 'encryptor'

e = Encryptor.new("hello", [2,2,2,2])
e.encrypt
e1 = Encryptor.new("jgnnq", [2,2,2,2])
e1.decrypt
