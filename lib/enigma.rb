require_relative 'shift_generator'
require_relative 'key_generator'
require_relative 'cryptographer'
require 'date'

class Enigma
  attr_reader :today
  def initialize
    @today  = Date.today.strftime('%d%m%y')
    @crypto = Cryptographer.new
  end
end
