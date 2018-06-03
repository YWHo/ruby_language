#!/usr/bin/ruby

## Simple block and yield
def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}

puts "-----------------"

## Pass parameter with yield statement
def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test {|i| puts "You are in the block #{i}"}

puts "-----------------"

## Pass more parameters with yield statement
def test
  yield 5, "lobby"
  puts "You are in the method test"
  yield 100, "door"
end
test {|i, j| puts "You are in the block #{i} at #{j}"}