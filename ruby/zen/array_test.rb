gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'array'

class ArrayTest < MiniTest::Unit::TestCase

  def test_it_finds_the_correct_subarray_in_a_mixed_group 
    input = [
      [1, 2],
      [4, 1],
      [10],
      [6, 6]
    ]
    assert_equal [6, 6], Array.greatest_from(input)
    #outside in approach
  end

  
  def test_it_finds_the_only_element_in_a_group
    input = [[1]]
    assert_equal [1], Array.greatest_from(input)
  end

  def test_it_finds_the_only_element_of_a_group
    input = [ [11, 22]]
    assert_equal [11, 22], Array.greatest_from(input)
  end

  def test_if_finds_one_subarray_when_there_are_two
    input = [ [22], [11]]
    assert_equal [22], Array.greatest_from(input)
  end

  def test_it_finds_greatest_when_not_first
    input = [[11], [22]]
    assert_equal [22], Array.greatest_from(input)
  end

  def test_it_handles_all_negative_numbers
    input = [[-1], [-2]]
    assert_equal [-1], Array.greatest_from(input)
  end

  def test_it_finds_the_sum_of_an_array
    input = [1, 1]
    assert_equal 2, Array.sum(input)
  end

  def test_it_finds_the_sum_of_an_array_with_negatives
    input = [-1, 1]
    assert_equal 0, Array.sum(input)
  end

  def test_it_finds_the_larger_element_when_there_are_sub_elements
    input = [ [1, 5], [3, 4], [2, 2]]
    assert_equal [3, 4], Array.greatest_from(input)
  end
end
