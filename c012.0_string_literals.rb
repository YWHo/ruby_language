#!/usr/bin/ruby -w

puts 'escape using "\\"';
puts 'That\'s right';

puts "Multiplication Value : #{24*60*60}"

x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

puts %{Ruby is fun.}  # equivalent to "Ruby is fun."
puts %Q{ Ruby is fun. } # equivalent to " Ruby is fun. "
puts %q[Ruby is fun.]  # equivalent to a single-quoted string
puts %x!ls | wc -l! #equivalent to back tick command output `ls -w | wc -l`