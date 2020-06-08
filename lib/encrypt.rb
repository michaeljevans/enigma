require 'date'
require_relative 'enigma'

enigma = Enigma.new
message = IO.read(ARGV[0]).chomp
encrypted = enigma.encrypt(message)
IO.write(ARGV[1], encrypted[:encryption])
IO.write('crypt_log.txt', "Encrypted '#{message}' with key #{encrypted[:key]} on #{Date.today.strftime('%Y-%m-%d')}\n", mode: 'a')
p "Created '#{ARGV[1]}' with key #{encrypted[:key]} and date #{encrypted[:date]}"
