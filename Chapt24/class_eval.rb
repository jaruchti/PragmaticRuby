# Demonstration of the class_eval method in Ruby
class MyClass
end

MyClass.class_eval do 
  def instance_method
    puts "In an instance method"
  end
end

obj = MyClass.new
obj.instance_method
