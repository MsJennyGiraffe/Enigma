require_relative 'test_helper'
require 'minitest'
require 'minitest/autorun'
require '../lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new("12345", "020202")
  end

  # def test_can_accept_a_date
  #   @offset.date
  # end

  def test_has_a_squared_date
    assert_equal 1, @offset.squared_date
  end

  def test_squared_date_is_an_integer
    skip
  end

  def test_can_split_date_into_character_array_of_strings
    skip
  end

  def test_can_collect_last_four_digits_of_squared_date_into_an_array

  end

  def test_has_selected_offsets
    skip
  end

  def test_can_put_offsets_into_an_array

  end

  def test_offset_array_has_only_integers

  end

  def test_has_key
    skip
  end

  def test_can_split_key_into_an_array
    skip
  end




end
