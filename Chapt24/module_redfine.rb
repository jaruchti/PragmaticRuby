# Demonstrates redefining a module implementation
module Mod
  def greeting
    "Hello"
  end
end

class Example
  include Mod
end

ex = Example.new
puts "Before change, greeting is #{ex.greeting}"
module Mod
  def greeting
    "Hi"
  end
end
puts "After change, greeting is #{ex.greeting}"
