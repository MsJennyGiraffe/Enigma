#should hold
  #def key generation

class KeyGenerator

  def generate_random_number
    random = rand(1..99999)
  end

  def pad_with_zeroes(number)
    number.to_s.rjust(5, "0")
  end

  def generate_key
    pad_with_zeroes(generate_random_number)
  end
end
