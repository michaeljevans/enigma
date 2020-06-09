require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift_finder'

class ShiftFinderTest < Minitest::Test
  def setup
    @shift_finder = ShiftFinder.new('rmguyhrxatziovz', '080620')
  end

  def test_it_exists
    assert_instance_of ShiftFinder, @shift_finder
  end

  def test_it_has_readable_attributes
    assert_equal 'rmguyhrxatziovz', @shift_finder.ciphertext
    assert_equal '080620', @shift_finder.date
  end

  def test_it_can_find_shifts
    assert_equal [10, 8, 22, -18], @shift_finder.find_shifts
  end
end
