#Demonstrates querying taint levels for internal and external data

x = "a string"
puts x.tainted? #False

y = ENV["HOME"]
puts y.tainted? #True
