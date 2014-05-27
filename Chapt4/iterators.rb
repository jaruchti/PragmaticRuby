#Demonstrates ruby iterators/enumerators
[ 1, 3, 5, 7, 9].each {|i| puts i }

p ["H", "A", "L"].collect {|x| x.succ } 
p [1,3,5,7].inject(0) {|sum, element| sum+element}
p [1,3,5,7].inject(1) {|product, element| product*element}

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

#Define an infinite sequence
triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

5.times { puts triangular_numbers.next }

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(5)
