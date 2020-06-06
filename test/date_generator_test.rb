require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date_generator'

class DateGeneratorTest < MiniTest::Test
  def setup
    @date_generator = DateGenerator.new
  end

  def test_it_exists
    assert_instance_of DateGenerator, @date_generator
  end

  def test_it_generates_todays_date
    # Tested on 2020/06/06
    assert_equal '060620', @date_generator.generate_date
  end
end
