# Demonstration of object creation hooks in Ruby
# Adds a timestamp with object cration date to all objects.

class Object
  attr_accessor :timestamp 
end

class Class
  old_new = instance_method :new
  define_method :new do |*args, &block|
    result = old_new.bind(self).call(*args, &block)
    result.timestamp = Time.now
    result
  end
end

class Test
end

obj1 = Test.new
sleep(0.002)
obj2 = Test.new

puts obj1.timestamp.to_f
puts obj2.timestamp.to_f
