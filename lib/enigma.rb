
require_relative "offset"
require_relative "key_generator"

class Enigma

  def keygen
    keygen  = KeyGenerator.new
    keygen.random_five_digits
    keygen = keygen.rotation
  end

  def offset_numbers
    numbers = OffSet.new
    numbers.date_squared
    offset_numbers = numbers.offset_rotations
  end

end

enigma = Enigma.new
p enigma.offset_numbers
p enigma.keygen
