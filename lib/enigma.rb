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

  def encrypt(message, key=0, date=@today)
    key = KeyGenerator.new.generate_key if key == 0
    shifts = ShiftGenerator.new(key, date).generate_shifts
    encrypted_message = @crypto.crypt(message, shifts)
    {encryption: encrypted_message, key: key, date: date}
  end
end
