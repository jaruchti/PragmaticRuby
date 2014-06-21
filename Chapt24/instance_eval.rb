# Demonstration of instance_eval in Ruby
class MyClass
end

MyClass.instance_eval do
  def class_method
    puts "In a class method"
  end
end

MyClass.class_method
