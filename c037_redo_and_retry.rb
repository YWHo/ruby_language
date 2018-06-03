#!/usr/bin/ruby

$times = 0

## Redo
for i in 0..5
  if i < 2 then
     puts "i<2: Value of local variable is #{i}"
     $times += 1
     next if ($times > 10) 
     redo
  end
  puts "i >= 2:Value of local variable is #{i}"
end

$times = 0
## Retry
begin
  for i in 0..5
    $times += 1
    break if ($times > 15)
    raise if i > 2
    puts "Retry: Value of local variable is #{i}"
  end
rescue
  retry
end