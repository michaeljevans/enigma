class ShiftFinder
  attr_reader :ciphertext, :date, :alphabet
  def initialize(ciphertext, date)
    @ciphertext = ciphertext
    @date       = date
    @alphabet   = ("a".."z").to_a << " "
  end

  def find_shifts
    positions_shifts = {(@ciphertext.length - 4) => (@alphabet.index(' ') - @alphabet.index(@ciphertext[@ciphertext.length - 4])),
                        (@ciphertext.length - 3) => (@alphabet.index('e') - @alphabet.index(@ciphertext[@ciphertext.length - 3])),
                        (@ciphertext.length - 2) => (@alphabet.index('n') - @alphabet.index(@ciphertext[@ciphertext.length - 2])),
                        (@ciphertext.length - 1) => (@alphabet.index('d') - @alphabet.index(@ciphertext[@ciphertext.length - 1]))}
    shift_order = positions_shifts.sort_by do |position, shift|
      position % 4
    end
    shifts = shift_order.map do |shift|
      shift.last
    end
  end
end
