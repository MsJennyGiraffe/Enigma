require_relative 'test_helper'
require 'minitest'
require 'minitest/autorun'
require '../lib/encryptor'

class OffsetTest < Minitest::Test

  def setup
    @encryptor = Encryptor.new("Hello World", [1, 2, 3, 4])
  end

  def test_can_accept_a_message
    assert_equal "Hello World", @encryptor.string
  end

  def test_has_a_rotation
    assert_equal 0, @encryptor.rotation
  end

  def test_has_a_rotation_array
    assert_equal [1, 2, 3, 4], @encryptor.rotation_array
  end

  def test_has__an_empty_character_array_for_message
    assert_equal [], @encryptor.char_array
  end

  def test_has_an_index_to_iterate_though_rotation
    assert_equal 0, @encryptor.index
  end

  def test_character_array_and_rotated_array_create_a_hash
    @encryptor.cipher(1)
    assert_equal Hash, @encryptor.dictionary.class
  end

  def test_hash_takes_rotation_to_create_values
    @encryptor.cipher(1)
    assert_equal 'a', @encryptor.dictionary.key('b')
  end

  def test_message_can_be_split_into_a_character_array
    assert_equal ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"], @encryptor.splitting_character_array
  end

  def test_encrypt_letter_outputs_the_correct_letter_based_on_input
    assert_equal "g", @encryptor.encrypt_letter("f", 1)
  end

  def test_enum_in_encrypt_changes_index_as_it_cycles
    #test should shovel indexes into an array and check
    #index against length % of word
    # @encryptor.encrypt_letter
    # @encryptor.encrypt
    #
  end

  def test_encrypt_shovels_characters_into_new_char_array
  end

  def test_decrypt_letter_uses_key_of_hash_to_output_rotated_character
  end

  def test_decrypt_shovels_rotated_characters_to_new_character_array
  end
end
