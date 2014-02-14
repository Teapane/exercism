gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'queue'

class QueueTest < Minitest::Unit::TestCase

  def test_it_finds_the_elements
    assert_equal [], queue.elements
  end

  def test_it_can_add_elements_to_the_queue
    assert_equal ["a"], @elements.push(x)
  end
end
