# Demonstrates unit testing framework in Ruby
require './roman'
require 'test/unit'

class TestRoman < Test::Unit::TestCase
  NUMBERS = [
    [ 1, "i" ], [ 2, "ii" ], [ 3, "iii" ],
    [ 4, "iv"], [ 5, "v"  ], [ 9, "ix"  ]
  ]

  def test_to_s
    NUMBERS.each do |arabic, roman|
      r = Roman.new(arabic)
      assert_equal(roman, r.to_s)
    end
  end

  def test_range
    #no exception for 1, 4999
    Roman.new(1)
    Roman.new(4999)

    assert_raises(RuntimeError) { Roman.new(0) }
    assert_raises(RuntimeError) { Roman.new(5000) }
  end
end
