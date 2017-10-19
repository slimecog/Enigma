class KeyGenerator
  attr_accessor :key

  def initialize
    @key = random_five_digits
  end

  def random_five_digits
    key = []
    5.times do
      key << Random.rand(0..9)
    end
    key.to_a
  end

  def rotation_a
    @key[0..1].join.to_i
  end

  def rotation_b
    @key[1..2].join.to_i
  end

  def rotation_c
    @key[2..3].join.to_i
  end

  def rotation_d
    @key[3..4].join.to_i
  end
end
