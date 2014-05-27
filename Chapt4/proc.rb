#Demonstrates procs in ruby

class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(99)

#Lambdas
bo = lambda { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

#Closures
def power_proc_generator
  value = 1
  lambda { value += value }
end

power_proc = power_proc_generator
p power_proc.call
p power_proc.call
p power_proc.call

# Block to method
def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0
my_while -> { a < 3 } do
  puts a
  a += 1
end
