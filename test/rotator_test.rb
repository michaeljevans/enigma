require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotator'

class RotatorTest < Minitest::Test
  def setup
    @rotator = Rotator.new
  end

  def test_it_exists
    assert_instance_of Rotator, @rotator
  end
end
