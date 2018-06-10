#!/usr/bin/ruby

begin
  file = open("/unexistant_file")
  if file
     puts "File opened successfully"
  end
rescue
     puts "File opened failed"
     file = STDIN
end
print file, "==", STDIN, "\n"

## Using 'retry'
puts "\n-- using 'retry' --"
fname = "/unexistant_file"
begin
  file = open(fname)
  if file
     puts "File opened successfully"
     puts file
  end
rescue
  puts "File opened failed, retrying with new filename"
  fname = "sample.txt"
  retry
end

## Using 'raise'
puts "\n-- using 'raise' --"
begin  
  puts 'I am before the raise.'  
  raise 'An error has occurred.'  
  puts 'I am after the raise.'  
rescue  
  puts 'I am rescued.'  
end  
puts 'I am after the begin block.'  

## Using 'raise' with a message
puts "\n-- using 'raise' with a message --"
begin  
  raise 'A test exception.'  
rescue Exception => e  
  puts e.message  
  puts "\nbacktrace:\n#{e.backtrace.inspect}"  
end  

## Using 'ensure'
puts "\n-- using 'ensure' --"
begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

## Using 'else'
puts "\n-- using 'else' --"
begin
  # raise 'A test exception.'
  puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end

## Using 'throw' and 'catch'
def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
  # ..
  # process information
end
promptAndGet("Name:")
