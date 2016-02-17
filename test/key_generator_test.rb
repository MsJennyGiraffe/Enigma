require_relative 'test_helper'
require 'minitest'
require 'minitest/autorun'
require '../lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def setup
    @key_generator = KeyGenerator.new
  end

  def test_it_can_create_an_instance_of_itself
    assert_equal KeyGenerator, @key_generator.class
  end

  def test_it_can_generate_an_integer
    assert_equal Fixnum, @key_generator.generate_random_number.class
  end

  def test_it_generates_a_number_less_than_100000
    assert @key_generator.generate_random_number < 100000
  end

  def test_number_generated_is_greater_than_zero
    assert @key_generator.generate_random_number > 0
  end

  def test_returns_a_string_padded_with_zeroes
    assert_equal "02138", @key_generator.pad_with_zeroes(2138)
    assert_equal "00001", @key_generator.pad_with_zeroes(1)
    assert_equal "00010", @key_generator.pad_with_zeroes(10)
    assert_equal "00100", @key_generator.pad_with_zeroes(100)
    assert_equal "10000", @key_generator.pad_with_zeroes(10000)
  end

  def test_it_returns_a_string
    assert_equal String, @key_generator.generate_key.class
  end

  def test_returns_five_chars_string
    assert_equal 5, @key_generator.generate_key.length
  end

end
