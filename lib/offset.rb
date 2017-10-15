class OffSet


  attr_accessor :date


  def initialize(date = Time.now.strftime("%d%m%y"))
    @date = date
  end

  def date_squared
    date = []
    squared =  @date
    date << squared.to_i ** 2
    @date = date.join("")
  end



  def offset_rotations
   offset_rotation = []
   offset_rotation.push(@date[-4].to_i)
   offset_rotation.push(@date[-3].to_i)
   offset_rotation.push(@date[-2].to_i)
   offset_rotation.push(@date[-1].to_i)
   @date = offset_rotation
  end


end
