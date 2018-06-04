#!/usr/bin/ruby

names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20

devices = Array.new(4, "mac") ## initialise the value as "mac"
puts "#{devices}"

nums = Array.new(10) { |e| e = e * 2 }  ## initialise with block
puts "#{nums}"

nums = Array.[](1, 2, 3, 4, 5)   ## initialisation with given values
puts "#{nums}"

nums = Array[3, 6, 9, 18, 21]   ## simple array creation
puts "#{nums}"

digits = Array(0..9)    ## using .. notation
puts "#{digits}"

## using build-in method
num = digits.at(6)
puts "#{num}"