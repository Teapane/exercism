require 'minitest/autorun'
require_relative 'example'

class ReverseStringTest < Minitest::Test
  def test_empty_string
    string = ""
    reversed = ""
    assert Example.reversed?(string) == reversed
  end

  def test_basic_string
    string = "string"
    reversed = "gnirts"
    assert Example.reversed?(string) == reversed
  end

  def test_more_complicated_string
    string = "This is a ! weriD looking Srgin~"
    reversed = "~nigrS gnikool Direw ! a si sihT"
    assert_equal reversed, Example.reversed?(string)
  end
end
