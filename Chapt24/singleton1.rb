# Demonstration of singleton methods and anonymous classes in Ruby
animal = "cat"
puts animal.upcase

def animal.speak
  puts "The #{self} saws miaw"
end

animal.speak
puts animal.upcase

animal = "dog"
singleton = class << animal
  def lie
    puts "The #{self} lies down"
  end
  self # << return singleton class object
end
animal.lie
puts "Singleton class object is #{singleton}"
