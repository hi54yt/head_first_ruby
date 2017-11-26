class Rectangle
  attr_reader :width, :height

  # def width
  #   @width
  # end
  #
  def width=(value)
    if value < 0
      raise "Width can't be negative"
    end
    @width = value
  end
  #
  # def height
  #   @height
  # end
  #
  def height=(value)
    if value < 0
      raise "Height can't be negative"
    end
    @height = value
  end

  def area
    width * height
  end
end

rect = Rectangle.new
rect.width = 25
rect.height = 25
puts rect.area
