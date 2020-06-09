require './lib/enigma'

module Fileable
  def create_log(action)
    enigma = Enigma.new
    altered = enigma.encrypt(IO.read(ARGV[0]).chomp) if action == :encrypt
    altered = enigma.decrypt(IO.read(ARGV[0]).chomp, ARGV[2], ARGV[3]) if action == :decrypt
    altered = enigma.crack(IO.read(ARGV[0]).chomp, ARGV[2]) if action == :crack
    IO.write(ARGV[1], altered.values.first)
    p "Created '#{ARGV[1]}' with key #{altered[:key]} and date #{altered[:date]}" if action == :encrypt || action == :decrypt
    p "Created '#{ARGV[1]}' with cracked key #{altered[:key]} and date #{altered[:date]}" if action == :crack
  end
end
