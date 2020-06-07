require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift_generator'

class ShiftGeneratorTest < MiniTest::Test
  def setup
    @shiftgen = ShiftGenerator.new('00357', '060620')
  end

  def test_it_exists
    assert_instance_of ShiftGenerator, @shiftgen
  end

  def test_it_has_readable_attributes
    assert_equal '00357', @shiftgen.key
    assert_equal '060620', @shiftgen.date
  end

  def test_it_can_generate_shifts
    assert_equal [4, 7, 35, 57], @shiftgen.generate_shifts
  end
end
