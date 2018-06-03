
# True if variable is initialized
foo = 42
puts "defined? foo : #{defined? foo}"    # => "local-variable"
puts "defined? $_ : #{defined? $_} "    # => "global-variable"
puts "defined? bar : #{defined? bar}"    # => nil (undefined)

# True if a method is defined
puts "defined? puts : #{defined? puts}"        # => "method"
puts "defined? puts(bar) : #{defined? puts(bar)}"   # => nil (bar is not defined here)
puts "defined? unpack : #{defined? unpack}"      # => nil (not defined here)
