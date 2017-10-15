

require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require 'pry'


class KeyGeneratorTest < Minitest::Test

  def test_for_five_random_digits
  key = KeyGenerator.new
  assert_equal 5, key.random_five_digits.length
  end




end
