#!/usr/bin/ruby

hsh = colors = { "red" => 0xf00,
                 "green" => 0x0f0,
                 "blue" => 0x00f }

hsh.each do |key, value|
   print key, " is ", value, "\n"
end

puts "-------------------"

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"
