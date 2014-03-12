gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked-list'

class LinkedListTest < Minitest::Unit::TestCase

  def test_it_exists
    assert LinkedList
  end
end
