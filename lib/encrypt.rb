require_relative 'enigma'

enigma = Enigma.new

message   = IO.read(ARGV[0]).chomp
encrypted = enigma.encrypt(message)
IO.write(ARGV[1], encrypted[:encryption])
p "Created '#{ARGV[1]}' with key #{encrypted[:key]} and date #{encrypted[:date]}"
