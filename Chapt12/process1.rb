#Demonstrates Processes/Forking in Ruby
fork do
  puts "In child, pid = #$$"
  exit 99
end

pid = Process.wait
puts "Child terminated, pid = #{pid}, status = #{$?.exitstatus}"
