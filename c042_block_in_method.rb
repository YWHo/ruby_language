#!/usr/bin/ruby

def test(&block)
  puts "example begin"
  block.call
  puts "example end"
end
test { puts "Hello World!"}