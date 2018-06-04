#!/usr/bin/ruby

# Module defined in moral.rb file

module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)
    puts "badness at #{badness}"
  end
end

