# Demonstration of reflection with objects in Ruby
r = 1..10 #Create a Range object
list = r.methods 
p list.length 
p list[0..3]

p r.respond_to?("frozen?") #true
p r.respond_to?(:has_key?) #false
p "me".respond_to?("==")   #true

num = 1
p num.object_id            #3
p num.class                #Fixnum
p num.kind_of? Fixnum      #True
p num.kind_of? Numeric     #True
p num.instance_of? Fixnum  # True
p num.instance_of? Numeric # False
