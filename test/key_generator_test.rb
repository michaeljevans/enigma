require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/key_generator'

class KeyGeneratorTest < MiniTest::Test
  def setup
    @keygen = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @keygen
  end

  def test_it_generates_random_five_digit_number
    @keygen.expects(:rand).returns('00357')
    assert_equal '00357', @keygen.generate_key
  end
end
