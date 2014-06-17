#Demonstrates using reflection with classes in Ruby
klass = Fixnum
begin
  print klass
  klass = klass.superclass
  print " < " if klass
end while klass
puts
p Fixnum.ancestors

class Demo
  @@var = 99
  CONST = 1.23

  private
    def private_method
    end
  protected
    def protected_method
    end
  public
    def public_method
      @inst = 1
      i = 1
      j = 2
      local_variables
    end

  def Demo.class_method
  end
end

puts Demo.private_instance_methods(false)  # [:private_method]
puts Demo.protected_instance_methods(false)#[:protected_method]
puts Demo.public_instance_methods(false)   #[:public_method]
puts Demo.singleton_methods(false)         #[:class_method]
puts Demo.class_variables                  #[:@@var]
puts Demo.constants(false)                 #[:CONST]

demo = Demo.new
puts demo.instance_variables               # []
demo.public_method                         # [:i, :j]
demo.instance_variables                    # [:@inst]
