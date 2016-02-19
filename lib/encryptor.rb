require_relative 'offset'
require 'pry'

class Encryptor

attr_reader :string, :rotation, :rotation_array, :char_array, :index, :dictionary

  def initialize(string, rotation_array)
    @string = string
    @rotation = 0
    @rotation_array = rotation_array
    @char_array = []
    @index = 0
    @dictionary
  end

  def cipher(rotation)
      characters = (' '..'z').to_a
      characters_rotated = characters.rotate(@rotation_array[@index])
      @dictionary = Hash[characters.zip(characters_rotated)]
  end

  def splitting_character_array
    @char_array = @string.split("")
  end

  def encrypt_letter(letter, index)
    cipher_for_rotation = cipher(@rotation_array[@index])
    cipher_for_rotation[letter]
  end

  def encrypt
    splitting_character_array
    new_char_array = []
      @char_array.each do |char|
        if @index >= 4
          @index = 0
        end
        new_char_array << encrypt_letter(char, @index)
        @index += 1
    end
    puts new_char_array.join
  end

  def decrypt_letter(letter, index)
    cipher_for_rotation = cipher(@rotation_array[@index])
    cipher_for_rotation.key(letter)
  end

  def decrypt
    splitting_character_array
    new_char_array = []
    @char_array.each do |char|
      if @index >= 4
        @index = 0
      end
      new_char_array << decrypt_letter(char, @index)
    end
    puts new_char_array.join
  end

end
