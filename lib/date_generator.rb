require 'date'

class DateGenerator
  def generate_date
    Date.today.strftime('%d%m%y')
  end
end
