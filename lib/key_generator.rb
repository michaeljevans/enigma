class KeyGenerator
  def generate_key
    rand(0..99999).to_s.rjust(5, '0')
  end
end
