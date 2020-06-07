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

  def test_it_alters_character
    assert_equal 'd', @crypto.alter_character('l', @shifts, 2)
    assert_equal 'u', @crypto.alter_character('r', @shifts, 0)
    assert_equal '!', @crypto.alter_character('!', @shifts, @shifts.sample)
  end

  def test_it_rotates_shift_index
    index = 0

    assert_equal 1, index = @crypto.rotate_index(index, @shifts)
    assert_equal 2, index = @crypto.rotate_index(index, @shifts)
    assert_equal 3, index = @crypto.rotate_index(index, @shifts)
    assert_equal 0, index = @crypto.rotate_index(index, @shifts)
  end

  def test_it_encrypts_message
    message   = 'hello world'
    encrypted = 'keder ohulw'

    assert_equal encrypted, @crypto.crypt(message, @shifts)
  end
end
