require_relative 'key_generator'

class Offset

attr_reader: dq

  def initialize(key = KeyGenerator.new.generate_key, date = Time.now.strftime('%m%d%y'))
    @squared_date = date.to_i * date.to_i
    @selected_offsets = []
    @key = key
    @offset_array = []
    @key_array = []
  end

  def split_date_to_char_array
    @squared_date = @squared_date.to_s.split('')
  end

  def generating_offset_numbers
    split_date_to_char_array
    @selected_offsets = @squared_date[-4..-1]
  end

  def positioning_offset_numbers
    generating_offset_numbers

    a_p = @selected_offsets[0]
    b_p = @selected_offsets[1]
    c_p = @selected_offsets[2]
    d_p = @selected_offsets[3]

    @offset_array = [a_p.to_i, b_p.to_i, c_p.to_i, d_p.to_i]
  end

  def splitting_the_key
    positioning_offset_numbers
    @key_array = @key.to_s.split('')

    a_k = @key_array[0,2]
    b_k = @key_array[1,2]
    c_k = @key_array[2,2]
    d_k = @key_array[3,2]

    @key_array = [a_k.join.to_i, b_k.join.to_i, c_k.join.to_i, d_k.join.to_i]
  end

  def rotation_with_offset
    splitting_the_key

    a_rotation = @offset_array[0] + @key_array[0]
    b_rotation = @offset_array[1] + @key_array[1]
    c_rotation = @offset_array[2] + @key_array[2]
    d_rotation = @offset_array[3] + @key_array[3]

    rotation_array = [a_rotation, b_rotation, c_rotation, d_rotation]
  end

  # def changing_to_an_integer
  #
  # end
end
