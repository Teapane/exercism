gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rna'

class RNATranslationTest < Minitest::Unit::TestCase

  def test_it_exists
    assert RNA
  end


  def test_rna_nucleotides
    assert_equal, %w[A C T U], rna.nucleotides
  end
end
