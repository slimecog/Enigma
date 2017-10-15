

class KeyGenerator

  attr_accessor :key


  def initialize
    @key = key
  end

  def random_five_digits
    key = []
    5.times do
    key << Random.rand(1..9)
  end
    @key = key.join("")
  end


  def rotation
    rotations = []
  rotations.push(@key[0..1].to_i)
  rotations.push(@key[1..2].to_i)
  rotations.push(@key[2..3].to_i)
  rotations.push(@key[3..4].to_i)
    @key = rotations
  end
end
