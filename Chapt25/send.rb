# Demonstrates use of send to call invoke a method by name.

puts "John Coltrane".send(:length) # 13
puts "Miles Davis".send("sub", /iles/, '.') # M. Davis
