#Demonstrates the concept of "duck-typing" in Ruby
require 'test/unit'

class Customer
  def initialize(first_name, last_name)
    @first_name = first_name;
    @last_name = last_name;
  end

  def append_name_to_file(file)
    file << @first_name << " " << @last_name
  end
end

class TestAddCustomer < Test::Unit::TestCase
  # Both String and Array implement << so they can be used 
  # with append_name_to_file as well
  def test_append_with_string
    c = Customer.new("Ima", "Customer");
    f = ""
    c.append_name_to_file( f )
    assert_equal("Ima Customer", f)
  end

  def test_append_with_array
    c = Customer.new("Ima", "Customer");
    f = [] 
    c.append_name_to_file( f )
    assert_equal(["Ima", " ", "Customer"], f)
  end
end
