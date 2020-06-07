require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift_generator'

class ShiftGeneratorTest < MiniTest::Test
  def setup
    @shift_generator = ShiftGenerator.new('00357', '060620')
  end

  def test_it_exists
    assert_instance_of ShiftGenerator, @shift_generator
  end

  def test_it_has_readable_attributes
    assert_equal '00357', @shift_generator.key
    assert_equal '060620', @shift_generator.date
    assert_equal 4, @shift_generator.a_shift
    assert_equal 7, @shift_generator.b_shift
    assert_equal 35, @shift_generator.c_shift
    assert_equal 57, @shift_generator.d_shift
  end
end
