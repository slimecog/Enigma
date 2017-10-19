require_relative "./key_generator"
require_relative "./encrypt"


class Offset
  attr_accessor :date


  def initialize(date = "ddmmyy")
    @date = Time.now.strftime("%d%m%y")
    @squared = date_squared
  end

  def date_squared
    date = []
    squared = @date
    date << squared.to_i ** 2
    date.join("")
  end

  def offset_a
    @squared[-4].to_i
  end

  def offset_b
    @squared[-3].to_i
  end

  def offset_c
    @squared[-2].to_i
  end

  def offset_d
    @squared[-1].to_i
  end
end
