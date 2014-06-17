# Demonstration of method objecst in Ruby

trane = "John Coltrane".method(:length)
miles = "Miles Davis".method("sub")

puts trane.call              # 13
puts miles.call(/iles/, '.') # M. Davis

unbound_length = String.instance_method(:length)
bound_length = unbound_length.bind("cat") #bind method to object
puts bound_length.call # 3
