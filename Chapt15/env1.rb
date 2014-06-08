# Demonstrates the writing of environment variables and child processes in Ruby
 
puts "In parent, term = #{ENV['TERM']}"
fork do
  puts "Start of child 1, term = #{ENV['TERM']}"
  ENV['TERM'] = "ansi"
  fork do
    puts "Start of child 2, term = #{ENV['TERM']}"
  end
  Process.wait
  puts "Back in parent, term = #{ENV['TERM']}"
end
