#!/usr/bin/ruby

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
   puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
   puts "Line2 contains  Dogs"
end


## Search and Replace


# example 1
phone = "2004-959-559 #This is Phone Number"

# Delete Ruby-style comments
phone = phone.sub!(/#.*$/, "")   
puts "Phone Num : #{phone}"

# Remove anything other than digits
phone = phone.gsub!(/\D/, "")    
puts "Phone Num : #{phone}"


# example 2
text = "1. rails are rails, really good Ruby on Rails"

# Change "rails" to "Rails" throughout
text.gsub!("rails", "Rails")
puts "#{text}"

text = "2. rails are rails, really good Ruby on Rails"
# Capitalize the word "Rails" throughout
text.gsub!(/\brails\b/, "Rails")
puts "#{text}"
