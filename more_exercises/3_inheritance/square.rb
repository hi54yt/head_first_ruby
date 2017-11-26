require '2_methods_and_classes/rectangle'

class Square < Rectangle
  def width=(value)
    @width = value
    @height = value
  end

  def height=(value)
    @width = value
    @height = value
  end
end
