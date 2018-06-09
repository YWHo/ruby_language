#!/usr/bin/ruby
require 'pp'

$, = ", "
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}
pp months

keys = months.keys
puts "#{keys}"
puts months.length

reverseMonths = months.invert
pp reverseMonths

arrMonths = months.sort
pp arrMonths

strMonths = months.to_s
pp strMonths