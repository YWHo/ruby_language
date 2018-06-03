#!/usr/bin/ruby

## For
for i in 0..5
  puts "For: Value of local variable is #{i}"
end

## Each
(0..5).each do |i|
  puts "Each: Value of local variable is #{i}"
end
