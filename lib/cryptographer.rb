class Cryptographer
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def rotate_character(character, shift)
    index = @alphabet.index(character)
    @alphabet.rotate(shift)[index]
  end
end
