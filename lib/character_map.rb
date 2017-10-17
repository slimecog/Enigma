class CharacterMap
  attr_reader :character_map

  def initialize
    @character_map = character_map
  end

  def character_map
    character_map = ("a".."z").to_a + ("0".."9").to_a
    character_map << (" ")
    character_map << (".")
    character_map << (",")
    character_map * 4
  end

  
end
character_map = CharacterMap.new
