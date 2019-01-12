require 'minitest/autorun'
require_relative 'example'

class ReverseStringTest < Minitest::Test
  def test_empty_string
    string   = ""
    reversed = ""

    assert_equal reversed, Example.reversed?(string)
  end

  def test_one_char_string
    string   = "s"
    reversed = "s"

    assert_equal reversed, Example.reversed?(string)
  end

  def test_it_returns_the_characters_of_a_string
    string = "This is a string"
    output = ["T", "h", "i", "s", " ", "i", "s", " ", "a", " ", "s", "t", "r", "i", "n", "g"]
    assert_equal output, Example.get_chars(string)
  end

  def test_the_reversal_of_the_array
    input = "This is a string"
    output = ["g", "n", "i", "r", "t", "s", " ", "a", " ", "s", "i", " ", "s", "i", "h", "T"]
    assert_equal output, Example.accumulate(input)

  end

  def test_two_char_string
    string   = "sa"
    reversed = "as"
    assert_equal reversed, Example.reversed?(string)
  end

  def test_more_complicated_string
    string = "This is a ! weriD looking Srgin~"
    reversed = "~nigrS gnikool Direw ! a si sihT"

    assert_equal reversed, Example.reversed?(string)
  end
end
