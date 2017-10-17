require "key_generator"
require "offset"


class Encrypt

  def initialize(message, key, offset)
    @message = message
    @key ||= KeyGenerator.new
    @offset = Offser.new
    @character_map = CharacterMap.new
  end


  def


end
=begin
memoize ||

ro
last **2 >> a
key(-4)




this class will be called by the Enigma runner
the purpose of this class is to take a statement
  and using the key and the offset, rotate through
  the character map
for this, this class need to be able to read the
  KeyGen class and the Offset class

when taking statement argument, break statement into
  an array with four character strings indexed throughout
