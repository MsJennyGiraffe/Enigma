class Offset

  def initialize(key_generator, date = Time.now.strftime('%m%d%y'))
    @date = date.to_i
    @squared_date = @date * @date
    @selected_offsets = []
    @key_generator = key_generator
  end

  def generating_offset_numbers
    @dates = @squared_date.to_s.split('')
    @selected_offsets = @dates[-4..-1]

  end

  def positioning_offset_numbers
    generating_offset_numbers

    a_p = @selected_offsets[0]
    b_p = @selected_offsets[1]
    c_p = @selected_offsets[2]
    d_p = @selected_offsets[3]

    offset_array = [a_p, b_p, c_p, d_p]
    offset_array
  end

  def splitting_the_key
    key_array = []

    key_array = @key_generator.to_s.split('')

    a_k = key_array[0,2]
    b_k = key_array[1,2]
    c_k = key_array[2,2]
    d_k = key_array[3,2]

    key_array = [a_k.join.to_i, b_k.join.to_i, c_k.join.to_i, d_k.join.to_i]
    key_array
  end


end
