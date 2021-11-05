class Rectangle
  attr_accessor :width, :longs
  def initialize width = 10, longs = 10
    @width = width
    @longs = longs
  end

  def width = new_value
    @width = new_value
  end

  def width
    @width
  end

  def longs = new_value
    @longs = new_value
  end

  def longs
    @longs
  end

  def dientich
    return @width*@longs
  end

  def chuvi
    return (@width+@longs)*2
  end
end
