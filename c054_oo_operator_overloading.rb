class Box
  attr_accessor :width, :height

  def initialize(w,h)     # Initialize the width and height
     @width,@height = w, h
  end

  def +(other)       # Define + to do vector addition
     Box.new(@width + other.width, @height + other.height)
  end

  def -@           # Define unary minus to negate width and height
     Box.new(-@width, -@height)
  end

  def *(scalar)           # To perform scalar multiplication
     Box.new(@width*scalar, @height*scalar)
  end

  def getDimention
    return "#{@width} x #{@height}"
 end
end

box1 = Box.new(10, 20)
box2 = Box.new(5, 6)
box3 = box1 + box2
box4 = -box1
box5 = box1 * 2

puts "box1: #{box1.getDimention()}"
puts "box2: #{box2.getDimention()}"
puts "box3: #{box3.getDimention()}"
puts "box4: #{box4.getDimention()}"
puts "box5: #{box5.getDimention()}"