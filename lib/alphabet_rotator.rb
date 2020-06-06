class AlphabetRotator
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def rotate(letter, shift)
    index = @alphabet.index(letter)
    @alphabet.rotate(shift)[index]
  end
end
