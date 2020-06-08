require './lib/enigma'

module Fileable
  def create_log(action)
    enigma = Enigma.new
    altered = enigma.encrypt(IO.read(ARGV[0]).chomp) if action == :encrypt
    altered = enigma.decrypt(IO.read(ARGV[0]).chomp, ARGV[2], ARGV[3]) if action == :decrypt
    IO.write(ARGV[1], altered.values.first)
    p "Created '#{ARGV[1]}' with key #{altered[:key]} and date #{altered[:date]}"
  end
end
