gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rna'

class RNATranslationTest < Minitest::Unit::TestCase

  def test_it_exists
    assert RNA
  end
end
