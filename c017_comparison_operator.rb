a = 10
b = 20
c = 30

puts "Given a = #{a}, b = #{b}"
puts "-------------------------------------"
puts "  Equal           : a == b is #{a == b}"  # false
puts "  Not Equal       : a != b is #{a != b}"  # true
puts "  -------------------------------------"
puts "  Greater than    : a > b is #{a > b}"    # false
puts "  Less than       : a < b is #{a < b}"    # true
puts "  -------------------------------------"
puts "  Greater or Equal: a >= b is #{a >= b}"  # false
puts "  Less or Equal   : a <= b is #{a <= b}"  # true
puts "  -------------------------------------"
puts "Given a = #{a}, b = #{b}, c= #{c}"
puts "-------------------------------------"
puts "  Combined Comparison : a <=> b is #{a <=> b}"  # -1
puts "                        b <=> b is #{b <=> b}"  # 0
puts "                        c <=> c is #{c <=> b}"  # 1
puts "  -------------------------------------"
puts "  Test Equality       : (1...10) === 5 is #{(1...10) === 5 }" #true
puts "  Same type and value : 1.eql?(1.0) is #{1.eql?(1.0)}"  #false

class Dog 
  @name = ''
  def initialize(name)
    @name = name
  end
end

rusky = Dog.new("Rusky")
micky = Dog.new("Micky")
bb = rusky

puts "  -------------------------------------"
puts "Given rusky = Dog, micky = Dog, bb = rusky"
puts "-------------------------------------"
puts "  Same object         : rusky.equal?(micky) is #{rusky.equal?(micky)}" # false
puts "                        rusky.equal?(bb) is #{rusky.equal?(bb)}"  # true