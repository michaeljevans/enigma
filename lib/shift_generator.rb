class ShiftGenerator
  attr_reader :key,
              :date,
              :a_shift,
              :b_shift,
              :c_shift,
              :d_shift

  def initialize(key, date)
    @key     = key
    @date    = date
    @a_shift = 0
    @b_shift = 0
    @c_shift = 0
    @d_shift = 0
  end

  def generate_shifts
    @a_shift = @key[0, 2].to_i + (@date.to_i * @date.to_i).to_s[-4].to_i
    @b_shift = @key[1, 2].to_i + (@date.to_i * @date.to_i).to_s[-3].to_i
    @c_shift = @key[2, 2].to_i + (@date.to_i * @date.to_i).to_s[-2].to_i
    @d_shift = @key[3, 2].to_i + (@date.to_i * @date.to_i).to_s[-1].to_i
  end
end
