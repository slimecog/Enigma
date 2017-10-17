
require_relative "key_generator"
require_relative "offset"


class Enigma

  def keygen
    @keygen ||= KeyGenerator.new
  end

  def offset_numbers
    @offset ||= OffSet.new
  end

  def encrypt
    encrypt = Encrypt.new
  end

end
