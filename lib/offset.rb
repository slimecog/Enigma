class OffSet


  attr_accessor :date


  def initialize(date = "ddmmyy")
    @date = Time.now.strftime("%d%m%y")
    @date_squared = date_squared
    @offset_rotations = offset_rotations
  end


  def date_squared
    date = []
    squared = @date
    date << squared.to_i ** 2
    @date_squared = date.join("")
  end



  def offset_rotations
   offset_rotation = []
   offset_rotation.push(@date_squared[-4].to_i)
   offset_rotation.push(@date_squared[-3].to_i)
   offset_rotation.push(@date_squared[-2].to_i)
   offset_rotation.push(@date_squared[-1].to_i)
   @offset_rotations = offset_rotation
  end


end

offset = OffSet.new
