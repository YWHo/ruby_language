#!/usr/bin/ruby

## 'each' iterator
puts "-- 'each' iterator --"
ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end

## 'collect' iterator (note: not copying)
puts "-- 'collect' iterator (without block) --"
a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b

puts "-- 'collect' iterator (with block) --"
c = a.collect {|x| 10*x}
puts c
