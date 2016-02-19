require_relative 'test_helper'
require 'minitest'
require 'minitest/autorun'
require '../lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new("12345", "020202")
  end

  def test_has_a_squared_date
    assert_equal 408120804, @offset.squared_date
  end

  def test_squared_date_is_an_integer
    assert Fixnum, @offset.squared_date.class
  end

  def test_can_split_date_into_character_array_of_strings
    @offset.generating_offset_numbers
    assert_equal Array, @offset.selected_offsets.class
    assert_equal String, @offset.selected_offsets[0].class
  end

  def test_can_collect_last_four_digits_of_squared_date_into_an_array
    @offset.generating_offset_numbers
    assert_equal 4, @offset.selected_offsets.length
  end

  def test_offset_array_has_only_integers
    @offset.positioning_offset_numbers
    assert_equal Fixnum, @offset.offset_array[0].class
    assert_equal Fixnum, @offset.offset_array[1].class
    assert_equal Fixnum, @offset.offset_array[2].class
    assert_equal Fixnum, @offset.offset_array[3].class
  end

  def test_offset_array_has_four_values
    @offset.positioning_offset_numbers
    assert_equal 4, @offset.offset_array.length
  end

  def test_offset_array_should_contain_only_last_four_digits_of_squared_date
    @offset.positioning_offset_numbers
    assert_equal "0804", @offset.offset_array.join
  end

  def test_has_key
    assert_equal "12345", @offset.key
  end

  def test_can_split_key_into_an_array
    @offset.splitting_the_key
    assert_equal Array, @offset.key_array.class
  end

  def test_key_array_contains_iandiplus1
    @offset.splitting_the_key
    assert_equal [12, 23, 34, 45], @offset.key_array
  end

  def test_rotation_with_offset_adds_offset_and_key
    @offset.rotation_with_offset
    assert_equal [], @offset.rotation_with_offset

  end

  def test_rotation_array_had_four_integers

  end

end
