#Demonstrates the use of a rescue clause to catch an exception in Ruby
require 'open-uri'
page = "podcasts"
file_name = "#{page}.html"
web_page = open("http://pragprog.com/#{page}")
output = File.open( file_name, "w" )
begin
  while line = web_page.gets
    output.puts line
  end
  output.close
rescue Exception
  STDERR.puts "Failed to download #{page}: #{$!}"
  output.close
  File.delete( file_name )
  raise #re-throw exception to higher level
end
