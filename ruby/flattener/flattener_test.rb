require 'minitest/autorun'
require 'minitest/pride'
require_relative 'flattener'

class FlattenerTest < MiniTest::Unit::TestCase

  def test_enumerable
    arr = [1,2, [3,4,5], [[6]]]
    new = [1, 2, 3, 4, 5, 6]
    assert_equal new, Flattener.flatten_with_enumerable(arr)
  end

  def test_recursive
    arr = [1,2, [3,4,5], [[6]]]
    new = [1, 2, 3, 4, 5, 6]
    assert_equal new, Flattener.flatten(arr)
  end

  def test_cryptic_recursive
    arr = [1,2, [3,4,5], [[6]]]
    new = [1, 2, 3, 4, 5, 6]
    assert_equal new, Flattener.cryptic_flatten(arr)
  end
end
