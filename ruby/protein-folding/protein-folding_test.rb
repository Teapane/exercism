gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'protein'

class ProteinFoldingTest < MiniTest::Unit::TestCase

  def test_an_empty_array(*codon)
    assert_equal [], rna.structure
  end

  def test_translation_of_rna
    skip
    assert_equal "lysine", Protein.translation(%w[[A A A] [A A G]])
  end

  def test_Anfinsens_dogma
    skip
  end

  def test_a_protein_has_a_polypeptide
    skip
    assert_equal 1, Protein.structure(%w[Ala, Arg, Lys])
  end




end





