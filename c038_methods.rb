#!/usr/bin/ruby

## Simple method with default values
def test1(a1 = "Ruby", a2 = "Perl")
  puts "The programming language is #{a1}"
  puts "The programming language is #{a2}"
end
test1 "C", "C++"
test1


## Simple method that return values
def test2
  i = 100
  j = 200
  k = 300
return i, j, k
end
values = test2
puts values

## Simple method that allows variable number of parameters
def sample (*test)
  puts "The number of parameters is #{test.length}"
  for i in 0...test.length
     puts "The parameters are #{test[i]}"
  end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"