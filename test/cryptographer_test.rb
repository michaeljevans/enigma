require 'minitest/autorun'
require 'minitest/pride'
require './lib/cryptographer'

class CryptographerTest < Minitest::Test
  def setup
    @crypto = Cryptographer.new
  end

  def test_it_exists
    assert_instance_of Cryptographer, @crypto
  end
end
