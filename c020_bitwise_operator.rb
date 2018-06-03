a = 0b00111100
b = 0b00001101

puts "a = %b (%d)" % [a, a]
puts "b = %b (%d)" % [b, b]
puts "a&b = %b (%d)" % [(a&b), (a&b)]
puts "a|b = %b (%d)" % [(a|b), (a|b)]
puts "a^b = %b (%d)" % [(a^b), (a^b)]
puts "~a = %b (%d)" % [~a, ~a]
puts "a << 2 = %b (%d)" % [(a<<2), (a<<2)]
puts "a >> 2 = %b (%d)" % [(a>>2), (a>>2)]