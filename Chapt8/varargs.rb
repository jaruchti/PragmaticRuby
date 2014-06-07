# Demonstrates variable length argument lists in Ruby
def varargs(arg1, *rest)
  "arg1=#{arg1}.  rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", "two")
puts varargs "one", "two", "three"
