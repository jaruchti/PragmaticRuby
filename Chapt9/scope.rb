#Demonstrates scope and block-local variables in Ruby

#Example #1, local variable used in block 
square = "yes"
total = 0
[ 1, 2, 3 ].each do |val|
  square = val * val;
  total += square;
end

puts "Total = #{total}"
puts "Square = #{square}"

#Example #2, block-local variable used so local variable retains prior value
square = "yes"
total = 0
[ 1, 2, 3 ].each do |val; square|
  square = val * val;
  total += square;
end

puts "Total = #{total}"
puts "Square = #{square}"
