#Demonsrates the use of the File class in Ruby

#Open the file for writing. By using a block, we ensure the file is closed
#upon exceptions
File.open("output.txt", "w") do |file|
  file.puts "Hello"
  file.puts "1 + 2 = #{1+2}"
end

#Now read the file in and print its contents to STDOUT
puts File.read("output.txt")
