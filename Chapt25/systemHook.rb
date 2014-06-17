# Demonstrates hooking system calls

module Kernel
  old_system_method = instance_method(:system)
  define_method(:system) do |*args|
    result = old_system_method.bind(self).call(*args)
    puts "system(#{args.join(', ')}) returned #{result.inspect}"
    result
  end
end

system("date")
system("kangaroo", "-hop 10", "skippy")
