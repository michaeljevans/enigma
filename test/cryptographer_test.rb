require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/cryptographer'

class CryptographerTest < Minitest::Test
  def setup
    @crypto = Cryptographer.new
    @shifts = [3, 27, 73, 20]
  end

  def test_it_exists
    assert_instance_of Cryptographer, @crypto
  end

  def test_it_has_readable_attributes
    assert_equal ("a".."z").to_a << " ", @crypto.alphabet
  end

  def test_it_rotates_character
    assert_equal 'k', @crypto.rotate_character('h', 3)
    assert_equal 'd', @crypto.rotate_character('l', 73)
  end
end
