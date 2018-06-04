require 'pp'  ## use Pretty Print

## unpack = decode according to the format string,
##          returning an array of each value extracted
## https://ruby-doc.org/core-2.3.0/String.html 

pp "abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
pp "abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
pp "abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
pp "aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
pp "aaa".unpack('h2H2c')               #=> ["16", "61", 97]
pp "\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
pp "now=20is".unpack('M*')             #=> ["now is"]
pp "whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]

