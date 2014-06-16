# Demonstration of safe levels and trusted objects in Ruby.
# The $SAFE variable allows us to specify which external actions are allowed.

dog = "dog is trusted"
cat = lambda { $SAFE = 3; "cat is untrusted" }.call #$SAFE >= 3 is untrusted
puts "dog.untrusted? = #{dog.untrusted?}"
puts "cat.untrusted? = #{cat.untrusted?}"
#running at safe level 1, these operations will succeed
puts dog.upcase!
puts cat.upcase!

#running at safe level 4, we can modify the cat
lambda { $SAFE = 4; cat.downcase! }.call
puts "cat is now '#{cat}'"
# but we can't modify the dog
lambda { $SAFE = 4; dog.downcase! }.call
puts "so we never get here"
