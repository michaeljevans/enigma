require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date_generator'

class DateGeneratorTest < MiniTest::Test
  def test_it_exists
    date_generator = DateGenerator.new

    assert_instance_of DateGenerator, date_generator
  end

  def test_it_generates_todays_date
    # Tested on 2020/06/04
    date_generator = DateGenerator.new

    assert_equal '040620', date_generator.generate_date
  end
end
