require_relative "./test_helper"

class KeyGeneratorTest < Minitest::Test


  def test_it_exists
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_for_five_random_digits
  key = KeyGenerator.new

  assert_equal 5, key.random_five_digits.length
  end

  def test_digits_are_random
    keys = []
    10.times do
      keys << KeyGenerator.new.key
    end
    assert_equal keys.count, keys.uniq.count
  end


  def test_it_saves_rotation_to_array
    skip
    key = KeyGenerator.new

    assert_equal expected.to_a, actual.to_a
    # assert_instance_of Array.new, key.random_five_digits, key.rotation
  end

  def test_rotation_saves_from_key
    skip
    key = "41521"
    keygen = KeyGenerator.new
    keygen.random_five_digits

    assert 4, keygen.rotation.count
    assert_equal 41, keygen.rotation[0]
    assert_equal 15, keygen.rotation[1]
    assert_equal 52, keygen.rotation[2]
    assert_equal 21, keygen.rotation[3]
  end


end
