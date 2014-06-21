# Creating a Singleton class in Ruby
some_class = Class.new do
  def self.class_method
    puts "In class method"
  end

  def instance_method
    puts "In instance method"
  end
end

some_class.class_method
obj = some_class.new
obj.instance_method
