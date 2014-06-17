#Demonstration of ObjectSpace in Ruby.  
# ObjectSpace lets us traverse all living objects in our program.

a = 102.7
b = 95.1
ObjectSpace.each_object(Float) {|x| p x }
