require_relative 'enigma'

enigma = Enigma.new

encrypted = IO.read(ARGV[0]).chomp
decrypted = enigma.decrypt(encrypted, ARGV[2], ARGV[3])
IO.write(ARGV[1], decrypted[:decryption])
p "Created '#{ARGV[1]}' with key #{decrypted[:key]} and date #{decrypted[:date]}"
