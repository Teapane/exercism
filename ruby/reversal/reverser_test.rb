require 'minitest/autorun'
require_relative 'reverser'

class StringReverserTest < Minitest::Unit::TestCase

  def test_it_splits_a_string_into_an_array_of_words
    assert_equal (["This", "is", "a", "string"]), Reverser.chop("This is a string")
  end

  def test_it_can_reverse_an_array_of_words
    assert_equal ("string a is this"), Reverser.rearrange(["This", "is", "a", "string"])
  end

  def test_it_can_reverse_an_array_of_words_and_characters_and_numbers
    assert_equal ("string a is this 100**&%&"), Reverser.rearrange(["100**&%&", "this", "is", "a", "string"])
  end

  def test_it_can_reverse_the_order_of_an_array_irregardless_of_case
    assert_equal ("string a is this"), Reverser.rearrange(["This", "IS", "A", "StRinG"])
  end
end
