
require 'simplecov'
SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require "../lib/enigma"
require "pry"

class EnigmaTest < MiniTest::Test


  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end


  def test_it_creates_instance_of_keygen
    enigma = Enigma.new
    enigma.keygen = KeyGenerator.new

    assert_instance_of KeyGenerator, enigma.keygen
  end

  def test_it_creates_instance_of_offset_numnber
    enigma = Enigma.new
    enigma.offset_numbers = Offset.new

    assert_instance_of Offset, enigma.offset_numbers
  end

end
