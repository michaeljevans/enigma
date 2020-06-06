require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet_rotator'

class AlphabetRotatorTest < Minitest::Test
  def setup
    @rotator = AlphabetRotator.new
  end

  def test_it_exists
    assert_instance_of AlphabetRotator, @rotator
  end

  def test_it_has_readable_attributes
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']

    assert_equal expected, @rotator.alphabet
  end

  def test_it_can_rotate_letters
    assert_equal 'k', @rotator.rotate('h', 3)
    assert_equal 'z', @rotator.rotate('a', 25)
  end
end
