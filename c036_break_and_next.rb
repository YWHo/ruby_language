#!/usr/bin/ruby

## Break
for i in 0..5
  if i > 2 then
     break
  end
  puts "Break: Value of local variable is #{i}"
end

## Next
for i in 0..5
  if i < 2 then
     next
  end
  puts "Next: Value of local variable is #{i}"
end