#!/usr/bin/ruby -w

time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect


time = Time.new

# Components of a Time
puts "Current Time : " + time.inspect
puts "year: #{time.year}"    # => Year of the date 
puts "month: #{time.month}"   # => Month of the date (1 to 12)
puts "day: #{time.day}"     # => Day of the date (1 to 31 )
puts "day of week: #{time.wday}"    # => 0: Day of week: 0 is Sunday
puts "day of year: #{time.yday}"    # => 365: Day of year
puts "hour: #{time.hour}"    # => 23: 24-hour clock
puts "min: #{time.min}"     # => 59
puts "sec: #{time.sec}"     # => 59
puts "usec: #{time.usec}"    # => 999999: microseconds
puts "zone: #{time.zone}"    # => "UTC": timezone name

# break down components into array
values = time.to_a
p values

# print UTC format
puts Time.utc(*values)

# Returns number of seconds since epoch
time3 = Time.now.to_i  
puts "seconds since epoch: #{time3}"

# Convert number of seconds into Time object.
puts "time object: #{Time.at(time3)}"

# Returns second since epoch which includes microseconds
time4 = Time.now.to_f
puts "seconds since epoch (include microseconds): #{time4}"

## Timezones and daylight saving
puts "\n-- Timezones and Daylight Savings Time --"
puts "timezone is #{time.zone}"
puts "offset from UTC: #{time.utc_offset}"
puts "timezone has DST? #{time.isdst}"
puts "in UTC time zone? #{time.utc}"
puts "localtime: #{time.localtime}"
puts "UTC time: #{time.gmtime}"
puts "new time object in local zone: #{time.getlocal}"
puts "new time object in UTC: #{time.getutc}"

## Formating Times and Dates
puts "\n-- Formating Times and Dates --"
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

## Time Arithmetic
puts "\n-- Time Arithmetic --"

now = Time.now          # Current time
puts "now: #{now}"

past = now - 10         # 10 seconds ago. Time - number => Time
puts "past: #{past}"

future = now + 10  # 10 seconds from now Time + number => Time
puts "future: #{future}"

diff = future - now     # => 10  Time - Time => number of seconds
puts "diff between future and now: #{diff}"