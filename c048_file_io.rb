#!/usr/bin/ruby

## 'puts' statement
puts "-- 'puts' statement --"
val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2

## 'gets' statement
puts "\n-- 'gets' statement --"
puts "Enter a value :"
val = gets
puts "You entered: #{val}"

## 'putc' statement
puts "\n-- 'putc' statement --"
str = "Hello Ruby!"
str.each_char {|c| putc c; sleep 0.1; $stdout.flush}
puts

## 'print' statement
puts "\n-- 'print' statement --"
print "Hello World"
print "Good Morning"
puts

## 'File.new' method and 'sysread' method
puts "\n-- File.new' method and 'sysread' method --"
aFile = File.new("sample.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"
end
aFile.close

## 'File.new' method and 'syswrite' method
puts "\n-- File.new' method and 'syswrite' method --"
aFile = File.new("output.txt", "w")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end
aFile.close

aFile = File.new("output.txt", "r")
if aFile
  content = aFile.sysread(20)
  puts "content is: #{content}"
else
   puts "Unable to open file!"
end
aFile.close

## 'Fine.open' method
puts "\n-- File.open' method --"
File.open("sample.txt", "r") do |f1|
  while line = f1.gets
    puts line
  end
end