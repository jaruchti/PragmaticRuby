class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

b1 = BookInStock.new("isb1", 3)
p b1
b2 = BookInStock.new("isb2", 3.14)
p b2
b3 = BookInStock.new("isb3", "5.67")
p b3
