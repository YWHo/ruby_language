#!/usr/bin/ruby

def test1
  puts "test1 is called"
end

alias run1 test1
run1
undef run1
puts "run1: #{defined? run1}"