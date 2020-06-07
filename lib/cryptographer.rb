class Cryptographer
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def crypt(message, shifts)
    index = 0
    altered_message = message.chars.inject('') do |acc, character|
      acc += alter_character(character, shifts, index)
      index = rotate_index(index, shifts)
      acc
    end
  end

  def rotate_character(character, shift)
    index = @alphabet.index(character)
    @alphabet.rotate(shift)[index]
  end

  def alter_character(character, shifts, index)
    return character if @alphabet.include?(character) == false
    character = rotate_character(character, shifts[index])
  end

  def rotate_index(index, shifts)
    index += 1
    return 0 if index == shifts.count
    index
  end
end
