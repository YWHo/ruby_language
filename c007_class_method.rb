#!/usr/bin/ruby

class Sample
  def hello
    puts "Hello Ruby method!"
  end
end

# Now using above class to create objects
object = Sample.new
object.hello