#!/usr/bin/ruby -w

# define a class
class Box
  # Initialize class variables
  @@count = 0

  # constructor method
  def initialize(w,h)
     @width, @height = w, h

     @@count += 1
  end

  # accessor methods
  def getWidth
     @width
  end
  def getHeight
     @height
  end

  # setter methods
  def setWidth=(value)
     @width = value
  end
  def setHeight=(value)
     @height = value
  end

  # instance method
  def getArea
    @width * @height
  end

  # Class method
  def self.printCount()
    puts "Box count is : #@@count"
  end

  # define to_s method
  def to_s
    "(w:#@width,h:#@height)"  # string formatting of the object.
  end

end

# create an object
box1 = Box.new(10, 20)

# use accessor methods
x = box1.getWidth()
y = box1.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# use setter methods
box1.setWidth = 30
box1.setHeight = 50

# use accessor methods
puts "Width of the box is : #{box1.getWidth()}"
puts "Height of the box is : #{box1.getHeight()}"

puts "Area: #{box1.getArea()}"

Box.printCount()

box2 = Box.new(3, 9)
Box.printCount()

puts box2.to_s