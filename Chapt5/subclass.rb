# Demonstration of subclassing in Ruby

class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

class Child < Parent
end

c = Child.new
c.say_hello

puts "The superclass of Child is #{Child.superclass}"
