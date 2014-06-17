# Demonstrates serialization in Ruby using YAML for marshaling

require 'yaml'
class Special
  def initialize(valuable, volatile, precious)
    @valuable = valuable
    @volatile = volatile
    @precious = precious
  end

  def to_yaml_properties
    %w{ @precious @valuable } #serialize @precious and @valuable
  end

  def to_s
    "#@valuable #@volatile #@precious"
  end
end

obj = Special.new("Hello", "there", "World")
puts "Before: obj = #{obj}"
data = YAML.dump(obj)  # Serialize obj
obj  = YAML.load(data) # Re-load obj
puts "After: obj = #{obj}"

puts YAML.dump(obj)
