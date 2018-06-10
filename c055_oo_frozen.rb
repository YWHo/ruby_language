#!/usr/bin/ruby -w

# define a class
class Box
  attr_accessor :width, :height

  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end

end

# create an object
box = Box.new(10, 20)

# now try to assign new values
box.width = 30
box.height = 50

puts "Width of the box is : #{box.width}"
puts "Height of the box is : #{box.height}"

#let us freez this object
box.freeze
if( box.frozen? )
  puts "Box object is frozen object"
else
  puts "Box object is normal object"
end

# now try to assign new values again
box.width = 60
box.height = 90

puts "Width of the box is : #{box.width}"
puts "Height of the box is : #{box.height}"