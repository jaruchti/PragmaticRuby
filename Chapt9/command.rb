#Demonstrates executing system commands in Ruby
p `date`
p `ls`
p %x{echo "Hello there"}

for i in 0..3
  p %x{echo #{i}}
end
