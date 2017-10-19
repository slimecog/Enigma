require_relative "./key_generator"
require_relative  "./offset"

class Encrypt

  def initialize(message)
    @message = message
    @key = KeyGenerator.new
    @character_map = character_map
    @offset = Offset.new
    @rotation_and_offset_a = rotation_and_offset_a
  end

  def character_map
    character_map = ("a".."z").to_a + ("0".."9").to_a
    character_map << (" ")
    character_map << (".")
    character_map << (",")
    character_map * 4
  end

  def every_four_letter
    split = @message.downcase.chars.each_slice(4).to_a
    letter  = @character_map
    letter.rotate! until letter[0][0].include? split[0][0]
    num = @rotation_and_offset_a
    num.to_i
    new_letter = letter.rotate[num]
    p new_letter
  end

  def rotation_and_offset_a
    both = []
    both << @key.rotation_a
    both << @offset.offset_a
    sum = 0
    both.each { |val| sum += val }
    @rotation_and_offset_a = sum
  end
end
