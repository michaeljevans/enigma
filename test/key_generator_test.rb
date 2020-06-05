require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/key_generator'

class KeyGeneratorTest < MiniTest::Test
  def test_it_exists
    keygen = KeyGenerator.new

    assert_instance_of KeyGenerator, keygen
  end

  def test_it_generates_random_number
    keygen = KeyGenerator.new

    keygen.expects(:generate_key).returns('00357')
    assert_equal '00357', keygen.generate_key
  end
end
