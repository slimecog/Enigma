require "./encrypt"

class Runner

  def split
    encrypt = Encrypt.new("encrypt me please!")
    encrypt.rotation_and_offset_a
    encrypt.every_four_letter
  end
end

runner = Runner.new
runner.split
