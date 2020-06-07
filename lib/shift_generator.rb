class ShiftGenerator
  attr_reader :key, :date

  def initialize(key, date)
    @key     = key
    @date    = date
  end

  def generate_shifts
    [@key[0, 2].to_i + (@date.to_i * @date.to_i).to_s[-4].to_i,
     @key[1, 2].to_i + (@date.to_i * @date.to_i).to_s[-3].to_i,
     @key[2, 2].to_i + (@date.to_i * @date.to_i).to_s[-2].to_i,
     @key[3, 2].to_i + (@date.to_i * @date.to_i).to_s[-1].to_i]
  end
end
