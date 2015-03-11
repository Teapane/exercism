require 'pry'
class Allergies

ALLERGENS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats',
  }

  def initialize(score)
    @score = score
  end

  def list
    ALLERGENS.keys.select { |key| key & @score == key }.map { |key| ALLERGENS.fetch(key)}
  end

  def allergic_to?(allergen)
    ALLERGENS.key(allergen) &  @score == ALLERGENS.key(allergen)
  end
end
