# Demonstration of utilizing extend to add module methods to an object
module Humor
  def tickle
    "#{self} says hee, hee!"
  end
end

obj = "Grouchy"
obj.extend Humor
puts obj.tickle
