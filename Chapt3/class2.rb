#Demostrates to_s for printing
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  
  def to_s
    "ISBN: #{@isbn}, price #{@price}"
  end
end

b1 = BookInStock.new("isb1", 3)
puts b1
b2 = BookInStock.new("isb2", 3.14)
puts b2
b3 = BookInStock.new("isb3", "5.67")
puts b3
