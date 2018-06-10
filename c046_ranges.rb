#!/usr/bin/ruby

$, =", "   # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "range1: #{range1}"
puts "range2: #{range2}"


# Assume a range
puts "\n-- Range object --"
digits = 0..9

puts "The range include value of 5? #{digits.include?(5)}"
puts "Min value is #{digits.min}"
puts "Max value is #{digits.max}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values less than 5: #{ret}"

digits.each do |digit|
   puts "Ranges in Loop #{digit}"
end

# Ranges as Conditions
puts "\n-- Ranges as Conditions --"
score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts "score #{score} is #{result}"


# Ranges as Intervals
puts "\n-- Ranges as Intervals --"
if ((1..10) === 5)
  puts "5 lies in (1..10)"
else
  puts "5 does not lie in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
else
  puts "c does not lie in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
else
  puts "z does not lie in ('a'..'j')"
end
